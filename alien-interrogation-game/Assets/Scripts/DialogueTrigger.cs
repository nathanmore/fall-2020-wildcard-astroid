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

    //Reference to text acting as placeholder for dialogue box
    //This will be removed later but provides example for now
    public GameObject text;

    //Reference to icon that appears aboce characters head.
    public GameObject convoIcon;

    private void OnTriggerEnter2D(Collider2D collision)
    {
        //Makes icon appear above NPC's head when player approaches
        //Signals to player that they can interact with NPC (currently using Spacebar)
        if (convoIcon != null)
        {
            convoIcon.SetActive(true);
        }


    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        //Removes icon above NPS's head when player leaves trigger area
        if (convoIcon != null)
        {
            convoIcon.SetActive(false);
        }

        //This is for temporary text box and would be removed after we implement dialogue manager
        text.SetActive(false);
    }

    public void OnTriggerStay2D(Collider2D collision)
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //We would then trigger the dialogue which would activate the Dialogue Manager we would attatch to NPC
            //this.TriggerDialogue();


            //The code below is for testing purposes and demonstration and would be removed
            Debug.Log("Spacebar");
            text.SetActive(true);

        }

    }
}
