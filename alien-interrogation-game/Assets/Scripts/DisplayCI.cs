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
    [HideInInspector] public List<string> notes;
    [HideInInspector] public bool guilty ;
    [HideInInspector] public int indexTrigger;
    [HideInInspector] public bool interrogated;
    void Awake()
    {
        characterName.text = m_CI.name;
        image.sprite = m_CI.sprite;
        //these are the notes that are going to be displayed in the notepad
        notes = m_CI.contradictions;
        guilty = m_CI.guilty;
        if (m_CI.indextrigger > 0)
            indexTrigger = m_CI.indextrigger;
        else
            indexTrigger = notes.Count;

        interrogated = m_CI.interrogated;
        displayer = this;       
    }

    private void Update()
    {
        interrogated = m_CI.interrogated;
    }
    //this method is used for displaying character outside of DisplayCI;
    public void DisplayImage(CharacterInfo character)
    {
        image.sprite = character.sprite;
        characterName.text = character.name;
    }
}
