using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueTrigger : MonoBehaviour
{
    //object containing character name and sentences to be displayed
    public Dialogue dialogue;
    //array of buttons for the choices possible after all sentences are displayed
    //each button will contain it's own dialogue and dialogue trigger
    public Button[] choices;

    //begins dialogue
    public void TriggerDialogue()
    {
        FindObjectOfType<DialogueManager>().StartDialogue(dialogue, choices);
    }
}
