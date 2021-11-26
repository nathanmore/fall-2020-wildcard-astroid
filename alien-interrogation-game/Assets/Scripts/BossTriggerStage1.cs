using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossTriggerStage1 : MonoBehaviour
{
    //GameObject that renders icon above NPC head and holds dialogueManager for that character
    public GameObject dialogueObject1;
    public GameObject dialogueObject2;

    private GameObject currDialogueObject;


    private void Start()
    {
        currDialogueObject = dialogueObject1;
    }

    private void Update()
    {
        if (GameValueManager.instance.stage1Info1 == true && GameValueManager.instance.stage1Info2 == true)
        {
            currDialogueObject = dialogueObject2;
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        currDialogueObject.SetActive(true);
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        currDialogueObject.SetActive(false);
    }
}