using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameValueManager : MonoBehaviour
{
    public static GameValueManager instance;
    
    [SerializeField]
    private string stage1SceneName = "Stage1_Interrogation";
    [SerializeField]
    private string stage2SceneName = "Stage2_Int";

    // Bools used to track player info for scene transitions from tutorial to stage 1 and stage 1 to stage 2
    public bool tutorialInfo = false;
    public bool stage1Info1 = false;
    public bool stage1Info2 = false;

    //used to record important pieces of info seen
    List<string> convoKnowledge = new List<string>();
    //used to track if important info has been gathered from each character
    List<bool> acuKnowledge = new List<bool>();

    private int currIndex;

    // Important for making sure there is only one GameValueManager instance
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(instance);
        }
        else
        {
            Destroy(this);
        }
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

    public static void SetInfoBools(string boolName)
    {
        if (boolName == "tutorialInfo")
        {
            instance.tutorialInfo = true;
        }
        else if (boolName == "stage1Info1")
        {
            instance.stage1Info1 = true;
        }
        else if (boolName == "stage1Info2")
        {
            instance.stage1Info2 = true;
        }
    }

    public static void NextScene(string scene)
    {
        if (scene == "stage1")
        {
            SceneManager.LoadScene(instance.stage1SceneName);
        }
        else if (scene == "stage2")
        {
            SceneManager.LoadScene(instance.stage2SceneName);
        }
        else
        {
            Debug.Log("Invalid scene code in Inky");
        }
    }
}
