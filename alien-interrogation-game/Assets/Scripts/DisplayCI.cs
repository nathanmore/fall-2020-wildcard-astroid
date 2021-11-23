using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DisplayCI : MonoBehaviour
{
    public CharacterInfo m_CI;
    public TextMeshProUGUI characterName; //This is for editing the name using DisplayCI
    public Image image;
    public static DisplayCI displayer;
    private List<string> notes;
    public bool guilty; 

    void Awake()
    {
        characterName.text = m_CI.name;
        image.sprite = m_CI.sprite;
        //these are the notes that are going to be displayed in the notepad
        notes = m_CI.contradictions;
        guilty = m_CI.guilty;
        displayer = this;
    }
    //this method is used for displaying character outside of DisplayCI;
    public void DisplayImage(CharacterInfo character)
    {
        image.sprite = character.sprite;
        characterName.text = character.name;
    }
}
