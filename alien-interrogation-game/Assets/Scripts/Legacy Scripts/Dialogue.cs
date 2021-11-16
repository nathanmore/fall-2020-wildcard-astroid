using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Dialogue
{
    //name of character speaking
    public string name;

    //array of sentences the character will say
    [TextArea(3, 10)] public string[] sentences;
}
