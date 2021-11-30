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
        int number = 1;
        image.sprite = characterInfo.image.sprite;
        nameText.text = characterInfo.characterName.text;

        notes.text = "Not enough info";

        if (characterInfo.interrogated)
        {
            notes.text = "";
            foreach (string s in characterInfo.notes)
            {
                int i = characterInfo.notes.IndexOf(s);

                if (i < characterInfo.indexTrigger)
                {
                    notes.text += number + ". " + s + "\n";
                    number++;
                }
                if (characterInfo.secondCharacter != null)
                {
                    if (i == characterInfo.indexTrigger && characterInfo.secondCharacter.talked)
                    {
                        notes.text += "\n" +"New Contradiction" + "\n";
                        notes.text += number + ". " + s + "\n";
                        number++;
                    }
                }
            }
        }
        else if (characterInfo.interacted && characterInfo.boolID == 0)
        {
            notes.text = "";
            foreach (string s in characterInfo.notes)
            {
                notes.text += number + ". " + s + "\n";
                number++;
            }
        }
    }
}
