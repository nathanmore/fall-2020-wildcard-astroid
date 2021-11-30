using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TwoDialoguesEventTrigger : MonoBehaviour
{
    //GameObject that renders icon above NPC head and holds dialogueManager for that character
    public GameObject dialogueObject1;
    public GameObject dialogueObject2;
    public string characterName;

    private GameObject currDialogueObject;


    private void Start()
    {
        currDialogueObject = dialogueObject1;
        currDialogueObject.SetActive(false);
    }

    private void Update()
    {
        if (characterName == "Alabaster")
        {
            if (GameValueManager.instance.stage1InfoADA1N == true)
            {
                currDialogueObject = dialogueObject2;
            }
        }
        else if (characterName == "Shudderz")
        {
            if (GameValueManager.instance.stage1InfoDauphin == true)
            {
                currDialogueObject = dialogueObject2;
            }
        }
        else if (characterName == "Nerguzzus")
        {
            if (GameValueManager.instance.stage2InfoSleethy == true)
            {
                currDialogueObject = dialogueObject2;
            }
        }
        else
        {
            Debug.Log("Invalid character name");
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
