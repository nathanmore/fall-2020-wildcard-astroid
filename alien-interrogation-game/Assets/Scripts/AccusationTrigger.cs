using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AccusationTrigger : MonoBehaviour
{
    public GameObject interactableIcon;
    public GameObject AccusationObject;

    private bool allowPress;

    // Update is called once per frame
    void Update()
    {
        if (allowPress)
        {
            if (Input.GetKeyDown(KeyCode.E))
            {
                AccusationObject.SetActive(true);
                PlayerMovement.playerMovement.AllowMovemnet(false);
            }
            if (Input.GetKeyDown(KeyCode.Escape))
            {
                AccusationObject.SetActive(false);
                PlayerMovement.playerMovement.AllowMovemnet(true);
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
