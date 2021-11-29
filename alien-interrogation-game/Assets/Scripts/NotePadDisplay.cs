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
    public TextMeshProUGUI nameText;
    public TextMeshProUGUI notes;

    public static NotePadDisplay notePad;
    void Awake()
    {
     // Debug.Log("Awaking");
        notePad = this;
    }
    public void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
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
        nameText.text = characterInfo.characterName.text;
        notes.text = "";
        if (characterInfo.interrogated)
        {
            foreach (string s in characterInfo.notes)
            {
                int i = characterInfo.notes.IndexOf(s);
                if (i < characterInfo.indexTrigger) notes.text += s + "\n";
                //if (GameValueManager.CurrIndex >= characterInfo.indexTrigger) notes.text += s + "\n";
                if (i == characterInfo.indexTrigger && 1 >= characterInfo.indexTrigger) notes.text += s + "\n";
            }
        }
    }

}
