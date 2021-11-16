using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using TMPro;

/// <Nathan M's Remaining Tasks>
/// Implement saving of location in dialogue script
///     When confronting, if contradictions are not discovered it should branch back to save point
///     (where you pressed the button) so as to not disturb flow of dialogue everytime button is pressed.
/// 
/// Optional: Check Inky tutorial to see how they display text
/// </summary>


public class InkDialogueManager : MonoBehaviour
{

    public TextAsset inkFile; // The json file from inky that has the script we want to load.
    public GameObject dialogueUI; // The object holding all of the UI relavent to dialogue.
    public GameObject customButton; // The prefab for the buttons that get created in optionPanel.

    //Adding Characters for names (Josh)
    public CharacterInfo characterInfo;
    public CharacterInfo player;
    // 

    GameObject textBox; // The gameObject that displays the dialogue box and holds the message and nametag text boxes.
    GameObject optionPanel; // Holds the buttons using vertical layout component.
    GameObject confrontButton; // Holds the confront button
    GameObject memoryButon; // Holds button for flashy thing (memory wipe)
    Story story;
    TMP_Text nametag;
    TMP_Text message;
    Image portrait;
    List<string> tags;
    static Choice choiceSelected;
    bool choicesShown = false;

    //[SerializeField]
    //float typeDelay = 1.0f;

    private void Start()
    {
        story = new Story(inkFile.text);

        // The following components must be listed as children of the dialogueUI object in the Unity scene in this same order in order for script to function
        textBox = dialogueUI.transform.GetChild(0).gameObject;
        optionPanel = dialogueUI.transform.GetChild(1).gameObject;
        confrontButton = dialogueUI.transform.GetChild(2).gameObject;
        memoryButon = dialogueUI.transform.GetChild(3).gameObject;

        // These components must be listed as children of the textbox object in the Unity scene in this same order in order for script to function
        nametag = textBox.transform.GetChild(0).GetComponent<TextMeshProUGUI>();
        message = textBox.transform.GetChild(1).GetComponent<TextMeshProUGUI>();
        portrait = textBox.transform.GetChild(2).GetComponent<Image>();
        tags = new List<string>();
        choiceSelected = null;

        // Makes it so that buttons preform their task when clicked
        confrontButton.GetComponent<Button>().onClick.AddListener(() => { ConfrontButton(); });
        memoryButon.GetComponent<Button>().onClick.AddListener(() => { MemoryWipe(); });
    }

    private void Update()
    {
        if (choicesShown == false) // Makes sure story is not progressed while choices are presented to player
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                PlayerMovement.playerMovement.AllowMovemnet(false);
                PlayStory();
            }
        }
    }

    //Checks state of story and progresses accordingly
    public void PlayStory()
    {
        // Is there more to the story?
        if (story.canContinue)
        {
            // Makes UI for dialogue visible
            dialogueUI.SetActive(true);

            AdvanceDialogue();

            // Are there any choices?
            if (story.currentChoices.Count != 0)
            {
                StartCoroutine(ShowChoices());
            }
        }
        else
        {
            FinishDialogue();
        }
    }

    // Finished the story
    public void FinishDialogue()
    {
        Debug.Log("End of Dialogue");

        // Makes dialogue UI invisible
        dialogueUI.SetActive(false);
        PlayerMovement.playerMovement.AllowMovemnet(true);

        // Sets story to passive phrase
        story.ChoosePathString("DONE"); //FIXME: Don't use hard coded string
    }

    // Advance through the story
    private void AdvanceDialogue()
    {
        string currentSentence = story.Continue();
        ParseTags();
        StopAllCoroutines();
        StartCoroutine(TypeSentence(currentSentence));
        //TypeSentence(currentSentence);
    }


    // Type out the sentence letter by letter
    IEnumerator TypeSentence(string sentence)
    {
        message.text = "";
        foreach (char letter in sentence.ToCharArray())
        {
            message.text += letter;
            yield return null;
        }
    }

    //public void TypeSentence(string sentence)
    //{
    //    message.text = "";
    //    int i = 0;
    //    float totalTime = 0f;

    //    while (i < sentence.Length)
    //    {
    //        if (totalTime < typeDelay)
    //        {
    //            message.text += sentence[i++];
    //        }
    //        totalTime += Time.time;
    //    }

    //}

    // Create then show the choices on the screen until one is selected
    IEnumerator ShowChoices()
    {
        Debug.Log("Show Choices");
        choicesShown = true;

        for (int i = 0; i < story.currentChoices.Count; i++)
        {
            var choice = story.currentChoices[i];
            GameObject button = Instantiate(customButton, optionPanel.transform);
            button.transform.GetChild(0).GetComponent<Text>().text = choice.text;
            button.GetComponent<Button>().onClick.AddListener(() => { SetDecision(choice); });
        }

        optionPanel.SetActive(true);

        yield return new WaitUntil(() => { return choiceSelected != null; });

        AdvanceFromDecision();
    }

    // Tells the story which branch to go to
    public void SetDecision(Choice element)
    {
        choiceSelected = element;
        story.ChooseChoiceIndex(choiceSelected.index);
    }

    //After a choice was made, turn off the panel and advance from that choice
    void AdvanceFromDecision()
    {
        optionPanel.SetActive(false);
        choicesShown = false;

        for (int i = 0; i < optionPanel.transform.childCount; i++)
        {
            Destroy(optionPanel.transform.GetChild(i).gameObject);
        }
        choiceSelected = null;

        SetSpeaker(player); //Edited by Josh to display image and name

        PlayStory();
    }



    /*** Tag Parser ***/
    /// Uses tags in Inky file to cue stuff in the game.
    void ParseTags()
    {
        tags = story.currentTags;
        foreach (string t in tags)
        {
            string prefix = t.Split(' ')[0];
            string param = t.Split(' ')[1];
            for (int i = 2; i < t.Split().Length; i++)
            {
                param += " " + t.Split(' ')[i];
            }

            switch (prefix.ToLower())
            {
                case "name":
                    if (param == "player" || param == player.name) //FIXME replace hard coded string with public variable
                    {
                        SetSpeaker(player);
                    }
                    else
                    {
                        SetSpeaker(characterInfo); //Edited by Josh to display image and name
                    }
                    break;
                case "note":
                    int noteNum = Int32.Parse(param); // Converts the string number to an integer
                    GameValueManager.CurrIndex = noteNum; // Passes the int to game manager
                    break;
            }
        }
    }

    // Sets the text for nametag.
    // Will likely be replaced by a portrait scriptable object system
    private void SetSpeaker(CharacterInfo character) // changed string parameter to a CharacterInfo parament 
    {
        nametag.text = character.name;
        //DisplayCI.displayer.DisplayImage(character);
        portrait.sprite = character.sprite;
    }

    //This function is called when memory device is used and it resets the story to the beginning.
    public void MemoryWipe()
    {
        story.ChoosePathString("BEGINNING"); //FIXME: Should not use hard coded string
        AdvanceFromDecision();
        //PlayStory();
    }

    public void ConfrontButton()
    {
        story.ChoosePathString("CONTRADICTION"); //FIXME: Should not use hard coded string
        AdvanceFromDecision();
    }

}