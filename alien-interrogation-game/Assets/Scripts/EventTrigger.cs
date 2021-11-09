using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventTrigger : MonoBehaviour
{
    //GameObject that renders icon above NPC head and holds dialogueManager for that character
    public GameObject dialogueObject;

    private InkDialogueManager dialogueManager;


    private void Start()
    {
        dialogueManager = dialogueObject.GetComponent<InkDialogueManager>();
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        dialogueObject.SetActive(true);

    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        dialogueManager.FinishDialogue();
        dialogueObject.SetActive(false);

    }

}
