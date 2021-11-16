using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameValueManager : MonoBehaviour
{
    public static GameValueManager instance;

    //used to track if one point of contradiction has been seen
    bool point1 = false;
    //used to track if another point of contradiction has been seen
    bool point2 = false;
    //used to see if currently at a point of contradiction
    bool atPoint = false;
    //used to record important pieces of info seen
    List<string> convoKnowledge = new List<string>();
    //used to track if important info has been gathered from each character
    List<bool> acuKnowledge = new List<bool>();

    private int currIndex;


    //checks if both points of contradiction have been seen and if the player is currently at a point of contradiction 
    //if true, it means the player can successfully confront the character they are talking to
    bool canConfront()
    {
        if (instance.point1 == true && instance.point2 == true && instance.atPoint == true)
        {
            return true;
        }

        return false;
    }


    void setPoint1(bool val)
    {
        instance.point1 = val;
    }


    void setPoint2(bool val)
    {
        instance.point2 = val;
    }


    void setAtPoint(bool val)
    {
        instance.atPoint = val;
    }


    void addConvoKnowledge(string info)
    {
        instance.convoKnowledge.Add(info);
    }


    string getConvoKnowledgeAt(int index)
    {
        return instance.convoKnowledge[index];
    }


    void clearConvoKowledge()
    {
        instance.convoKnowledge.Clear();
    }


    void addAcuKnowledge(bool info)
    {
        instance.acuKnowledge.Add(info);
    }


    bool getAcuKnowledgeAt(int index)
    {
        return instance.acuKnowledge[index];
    }

    public static int CurrIndex
    {
        get
        {
            return instance.currIndex;
        }
        set
        {
            instance.currIndex = value;
        }
    }
}
