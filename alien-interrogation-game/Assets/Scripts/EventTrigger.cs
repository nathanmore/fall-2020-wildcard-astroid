using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventTrigger : MonoBehaviour
{
    public InkDialogueManager dialogueManager;

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

    }

    public void OnTriggerStay2D(Collider2D collision)
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //We would then trigger the dialogue which would activate the Dialogue Manager we would attatch to NPC
            //this.TriggerDialogue();
            dialogueManager.PlayStory();
        }

    }
}
