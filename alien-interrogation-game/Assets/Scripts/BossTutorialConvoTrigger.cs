using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossTutorialConvoTrigger : MonoBehaviour
{
    //GameObject that renders icon above NPC head and holds dialogueManager for that character
    public GameObject dialogueObject1;
    public GameObject dialogueObject2;

    private GameObject currDialogueObject;


    private void Start()
    {
        currDialogueObject = dialogueObject1;
        currDialogueObject.SetActive(false);
    }

    private void Update()
    {
        if (GameValueManager.instance.tutorialInfo == true)
        {
            currDialogueObject = dialogueObject2;
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            currDialogueObject.SetActive(true);
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            currDialogueObject.SetActive(false);
        }
    }

    private void OnTriggerStay2D(Collider2D collision)
    {
        OnTriggerEnter2D(collision);
    }
}
