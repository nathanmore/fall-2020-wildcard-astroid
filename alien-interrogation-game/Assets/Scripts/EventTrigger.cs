using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventTrigger : MonoBehaviour
{
    [SerializeField]
    GameObject text;

    [SerializeField]
    GameObject convoIcon;

    private void Start()
    {

    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (convoIcon != null)
        {
            convoIcon.SetActive(true);
        }

        text.SetActive(true);
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (convoIcon != null)
        {
            convoIcon.SetActive(false);
        }

        text.SetActive(false);
    }
}
