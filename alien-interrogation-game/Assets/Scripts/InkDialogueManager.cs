using System.Collections;
using System.Collections.Generic;
using System;
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
    GameObject notebookUI; // Holds notebook
    Story story;
    TMP_Text nametag;
    TMP_Text message;
    Image portrait;
    List<string> tags;
    static Choice choiceSelected;
    //Bool used for skipping typeSentence animation/delay
    private bool skip;
    private bool choicesShown = false;
    private string currentSentence;
    private float typeDelay = 0.01f; //Determines delay between each character being printed
    bool buttonsSet = false;
    bool needsNotebook = false;


    /// Various variables used for saving and loading into a specific state in the story
    private string saveState; // Holds the current saved state of the story
    private string savedSentence; // Saves the last text displayed prior to save so that player is right where they left off
    private CharacterInfo currSpeaker; //Holds the current character speaking
    private CharacterInfo savedSpeaker; //Saves the current speaker prior to save

    private void Start()
    {
        story = new Story(inkFile.text);

        // The following components must be listed as children of the dialogueUI object in the Unity scene in this same order in order for script to function
        textBox = dialogueUI.transform.GetChild(0).gameObject;
        optionPanel = dialogueUI.transform.GetChild(1).gameObject;
        confrontButton = dialogueUI.transform.GetChild(2).gameObject;
        memoryButon = dialogueUI.transform.GetChild(3).gameObject;
        notebookUI = dialogueUI.transform.GetChild(3).gameObject;

        // These components must be listed as children of the textbox object in the Unity scene in this same order in order for script to function
        nametag = textBox.transform.GetChild(2).GetComponent<TextMeshProUGUI>();
        message = textBox.transform.GetChild(3).GetComponent<TextMeshProUGUI>();
        portrait = textBox.transform.GetChild(4).GetComponent<Image>();
        tags = new List<string>();
        choiceSelected = null;
   
        skip = false; 

        // Makes it so that buttons preform their task when clicked
        //confrontButton.GetComponent<Button>().onClick.AddListener(() => { ConfrontButton(); });
        //memoryButon.GetComponent<Button>().onClick.AddListener(() => { MemoryWipe(); });
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            if (skip)
            {
                skip = false;
                Debug.Log("keyCode R: Setting False"); 
            }
            else if(!skip)
            {
                skip = true;
                Debug.Log("keyCode R: Setting True");
            }
        }

        if (Input.GetKeyDown(KeyCode.Space))
        if (choicesShown == false) // Makes sure story is not progressed while choices are presented to player
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                PlayerMovement.playerMovement.AllowMovement(false);
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

            if (needsNotebook == true)
            {
                notebookUI.SetActive(true);
            }
            else
            {
                notebookUI.SetActive(false);
            }

            if (buttonsSet == false)
            {
                AddButtonListeners();
            }

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

    // Adds listeners to buttons (is done each time dialogue is started with character so it is active for their specific script)
    public void AddButtonListeners()
    {
        // Makes it so that buttons preform their task when clicked
        confrontButton.GetComponent<Button>().onClick.AddListener(() => { ConfrontButton(); });
        memoryButon.GetComponent<Button>().onClick.AddListener(() => { MemoryWipe(); });

        buttonsSet = true;
    }

    // Finished the story
    public void FinishDialogue()
    {
        Debug.Log("End of Dialogue");

        // Makes dialogue UI invisible
        dialogueUI.SetActive(false);
        buttonsSet = false;
        PlayerMovement.playerMovement.AllowMovement(true);

        // Sets story to passive phrase
        story.ChoosePathString("DONE"); //FIXME: Don't use hard coded string
    }

    // Advance through the story
    private void AdvanceDialogue()
    {
        currentSentence = story.Continue();
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

            if (skip) break;

            yield return new WaitForSeconds(typeDelay);
        }
        if (skip)
        {
            message.text = "";
            message.text = sentence;
            //skip = false; This line makes it so you have to press R every time before each sentence to toggle skip as true; 
        }
    }


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

        SetSpeaker(player);

        //currentSentence = story.Continue();
        //StartCoroutine(TypeSentence(currentSentence));

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
                        //if statement added to check specifically if the player interacted with these two AIs 
                        if (characterInfo.name == "Shudderz" || characterInfo.name == "Nerguzzus Collective")
                            characterInfo.talked = true;
                    }
                    break;
                case "index":
                    int noteNum = Int32.Parse(param); // Converts the string number to an integer
                    GameValueManager.CurrIndex = noteNum; // Passes the int to game manager
                    break;
                case "return":
                    ReturnToSave(saveState);
                    break;
                case "found":
                    GameValueManager.SetInfoBools(param);
                    break;
                case "transition":
                    GameValueManager.NextScene(param);
                    break;
            }
        }
    }

    // Sets the portrait and name displayed
    // Will likely be replaced by a portrait scriptable object system
    private void SetSpeaker(CharacterInfo character)
    {
        nametag.text = character.name;
        portrait.sprite = character.sprite;

        currSpeaker = character;
    }

    //This function is called when memory device is used and it resets the story to the beginning.
    public void MemoryWipe()
    {
        AudioManager.audioManager.PlayAudio("Memory Wipe"); //Plays "Memory Wipe" sound when button pressed 
        story.ChoosePathString("BEGINNING"); //FIXME: Should not use hard coded string
        StopAllCoroutines();
        if (choicesShown == true)
        {
            AdvanceFromDecision();
        }
        else
        {
            PlayStory();
        }
    }

    public void ConfrontButton()
    {
        saveState = story.state.ToJson();
        savedSpeaker = currSpeaker;
        savedSentence = currentSentence;

        story.ChoosePathString("CONTRADICTION"); //FIXME: Should not use hard coded string
        AdvanceFromDecision();
    }

    public void ReturnToSave(string save)
    {
        story.state.LoadJson(save);
        SetSpeaker(savedSpeaker);
        currentSentence = savedSentence;

        //string currentSentence = savedSentence;

        //StopAllCoroutines();
        //StartCoroutine(TypeSentence(currentSentence));
        //TypeSentence(savedSentence);
    }

}