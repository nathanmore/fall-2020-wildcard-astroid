using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(fileName = "New Character", menuName = "Character")]
public class CharacterInfo : ScriptableObject
{
    public new string name;
    public Sprite sprite;
    public int indextrigger;
    public bool guilty;
    public bool interrogated;
    public List<string> contradictions = new List<string> { };
   
}

