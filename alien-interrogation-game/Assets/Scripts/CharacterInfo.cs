using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(fileName = "New Character", menuName = "Character")]
public class CharacterInfo : ScriptableObject
{
    public new string name;
    public Sprite sprite;
    public bool guilty;
    public int indexTrigger;
    public bool talked;
    public int boolID;
    public CharacterInfo secondCharacter;
    public List<string> contradictions = new List<string> { };
}

