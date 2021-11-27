using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AccusationTrigger : MonoBehaviour
{
    public GameObject interactableIcon;
    public GameObject AccusationObject;

    private bool alreadyActive;
    private bool allowPress;

    // Update is called once per frame
    void Update()
    {
        if (allowPress)
        {
            if (!alreadyActive && Input.GetKeyDown(KeyCode.Space))
            {
                AccusationObject.SetActive(true);
                PlayerMovement.playerMovement.AllowMovement(false);
                alreadyActive = true;
            }
            else if (Input.GetKeyDown(KeyCode.Space))
            {
                AccusationObject.SetActive(false);
                PlayerMovement.playerMovement.AllowMovement(true);
                alreadyActive = false; 
            }
        }
    }

    public void OnTriggerEnter2D(Collider2D collision)
    {
        if(collision.tag == "Player")
        {
            interactableIcon.SetActive(true);
            allowPress = true;
        }
           
    }

    public void OnTriggerExit2D(Collider2D collision)
    {
        if(collision.tag == "Player")
        {
            interactableIcon.SetActive(false);
            allowPress = false;
        }
           
    }

}
