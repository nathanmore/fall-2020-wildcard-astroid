using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;
using TMPro;

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
    static Story story;
    TMP_Text nametag;
    TMP_Text message;
    Image portrait;
    List<string> tags;
    static Choice choiceSelected;

    private void Start()
    {
        story = new Story(inkFile.text);

        textBox = dialogueUI.transform.GetChild(0).gameObject;
        optionPanel = dialogueUI.transform.GetChild(1).gameObject;
        confrontButton = dialogueUI.transform.GetChild(2).gameObject;
        memoryButon = dialogueUI.transform.GetChild(3).gameObject;

        nametag = textBox.transform.GetChild(0).GetComponent<TextMeshProUGUI>();
        message = textBox.transform.GetChild(1).GetComponent<TextMeshProUGUI>();
        portrait = textBox.transform.GetChild(2).GetComponent<Image>();
        tags = new List<string>();
        choiceSelected = null;
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            PlayStory();
        }
        confrontButton.GetComponent<Button>().onClick.AddListener(() => { ConfrontButton(); });
        memoryButon.GetComponent<Button>().onClick.AddListener(() => { MemoryWipe(); });
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

    // Create then show the choices on the screen until one is selected
    IEnumerator ShowChoices()
    {
        Debug.Log("There are choices need to be made here!");
        List<Choice> _choices = story.currentChoices;

        for (int i = 0; i < _choices.Count; i++)
        {
            GameObject temp = Instantiate(customButton, optionPanel.transform);
            temp.transform.GetChild(0).GetComponent<Text>().text = _choices[i].text;
            temp.AddComponent<Selectable>();
            temp.GetComponent<Selectable>().element = _choices[i];
            temp.GetComponent<Button>().onClick.AddListener(() => { temp.GetComponent<Selectable>().Decide(); });
        }

        optionPanel.SetActive(true);

        yield return new WaitUntil(() => { return choiceSelected != null; });

        AdvanceFromDecision();
    }

    // Tells the story which branch to go to
    public static void SetDecision(object element)
    {
        choiceSelected = (Choice)element;
        story.ChooseChoiceIndex(choiceSelected.index);
    }

    //After a choice was made, turn off the panel and advance from that choice
    void AdvanceFromDecision()
    {
        optionPanel.SetActive(false);

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
                    // SetNametag(param);
                    if (param == "player") //FIXME replace hard coded string with public variable
                    {
                        SetSpeaker(player);
                    }
                    else
                    {
                        SetSpeaker(characterInfo); //Edited by Josh to display image and name
                    }
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
        story.ChoosePathString("Beginning"); //FIXME: Should not use hard coded string
        AdvanceFromDecision();
        //PlayStory();

    }

    public void ConfrontButton()
    {
        story.ChoosePathString("Contradiction"); //FIXME: Should not use hard coded string
        AdvanceFromDecision();
    }

}

// Class used for option system
public class Selectable : MonoBehaviour
{
    public object element;
    public void Decide()
    {
        InkDialogueManager.SetDecision(element);
    }

}
