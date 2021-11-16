using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(fileName = "New Character", menuName = "Character")]
public class CharacterInfo : ScriptableObject
{
    public new string name;
    public Sprite sprite;
    [SerializeField] public int id;
    public bool guilty;
    List<string> importantThings = new List<string> { };
}
