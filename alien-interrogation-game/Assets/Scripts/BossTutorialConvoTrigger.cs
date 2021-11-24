using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossTutorialConvoTrigger : MonoBehaviour
{
    //GameObject that renders icon above NPC head and holds dialogueManager for that character
    public GameObject dialogueObject1;
    public GameObject dialogueObject2;

    private GameObject currDialogueObject;
    private InkDialogueManager dialogueManager;


    private void Start()
    {
        currDialogueObject = dialogueObject1;
        dialogueManager = currDialogueObject.GetComponent<InkDialogueManager>();
    }

    private void Update()
    {
        if (GameValueManager.instance.tutorialInfo == true)
        {
            currDialogueObject = dialogueObject2;
            dialogueManager = currDialogueObject.GetComponent<InkDialogueManager>();
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        currDialogueObject.SetActive(true);
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        dialogueManager.FinishDialogue();
        currDialogueObject.SetActive(false);
    }
}
