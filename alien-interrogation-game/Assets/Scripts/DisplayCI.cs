using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DisplayCI : MonoBehaviour
{
    public CharacterInfo m_CI;
    [HideInInspector] 
    public CharacterInfo secondCharacter;
    public TextMeshProUGUI characterName; //This is for editing the name using DisplayCI
    public Image image;
    public static DisplayCI displayer;

    //Strings to print out in the accusation scene
    [HideInInspector] 
    public List<string> notes;
    
    //Bool to check if the character is guilty 
    [HideInInspector] 
    public bool guilty;

    //check if palyer interacter with this person
    [HideInInspector]
    public bool interacted;

    //Tells at what index to stop printing
    [HideInInspector] 
    public int indexTrigger;

    //Bool to check if played knows the info
    [HideInInspector] 
    public bool interrogated;

    [HideInInspector]
    public int boolID;

    void Awake()
    {
        characterName.text = m_CI.name;
        image.sprite = m_CI.sprite;

        guilty = m_CI.guilty;

        if(m_CI.secondCharacter != null)
            secondCharacter = m_CI.secondCharacter;

        //these are the notes that are going to be displayed in the notepad
        notes = m_CI.contradictions;

        //checks if index is out of bounds or less than zero
        if (m_CI.indexTrigger > 0)
        {
            indexTrigger = m_CI.indexTrigger;
        }
        else if (indexTrigger > notes.Count)
        {
            indexTrigger = notes.Count;
            Debug.Log("Index out of bounds");
        }
        else
            indexTrigger = notes.Count;

        boolID = m_CI.boolID;   
        interrogated = GameValueManager.instance.info[m_CI.boolID];

        interacted = m_CI.talked;

        displayer = this;       
    }
    private void Update()
    {
        if(secondCharacter != null)
             interacted = secondCharacter.talked;

        interrogated = GameValueManager.instance.info[boolID];
    }
    //this method is used for displaying character outside of DisplayCI;
    public void DisplayImage(CharacterInfo character)
    {
        image.sprite = character.sprite;
        characterName.text = character.name;
    }
}
