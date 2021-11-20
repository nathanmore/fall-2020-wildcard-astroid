using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class NotePadDisplay : MonoBehaviour
{ 

    public GameObject accusation;
    private DisplayCI characterInfo;

    public Image image;
    public TextMeshProUGUI text;

    public static NotePadDisplay notePad;
    void Awake()
    {
     // Debug.Log("Awaking");
        notePad = this;
    }
    public void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            gameObject.SetActive(false);
            accusation.SetActive(true);
        }
    }
    public void SetChararectInfo(DisplayCI info)
    {
      // Debug.Log("Setting");
        characterInfo = info;
        Display();
    }

    public void Display()
    {
       // Debug.Log("Displaying");
        image.sprite = characterInfo.image.sprite;
        text.text = characterInfo.characterName.text;
    }

}
