using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventTrigger : MonoBehaviour
{
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
