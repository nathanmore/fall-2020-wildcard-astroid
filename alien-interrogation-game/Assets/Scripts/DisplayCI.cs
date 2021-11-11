using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DisplayCI : MonoBehaviour
{
    private CharacterInfo m_CI;
    // public TextMeshProUGUI characterName; //This is for editing the name using DisplayCI
    public Image image;
    public static DisplayCI displayer; 

    void Awake()
    {
        displayer = this;
    }
    public void DisplayImage(CharacterInfo character)
    {
        //We can display the name through here as well
        image.sprite = character.sprite;
    }
}
