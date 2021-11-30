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
    public bool tutorialInternInfo = false;
    public bool stage1InfoDauphin = false;
    public bool stage1InfoADA1N = false;
    public bool stage2InfoAlabaster = false;
    public bool stage2InfoDetG = false;
    public bool stage2InfoSleethy = false;


    //used to record important pieces of info seen
    List<string> convoKnowledge = new List<string>();
    //used to track if important info has been gathered from each character
    List<bool> acuKnowledge = new List<bool>();

    private int currIndex;


    private void Start()
    {
        instance.currIndex = 15;
    }

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
        if (boolName == "tutorialInternInfo")
        {
            instance.tutorialInternInfo = true;
        }
        else if (boolName == "stage1InfoDauphin")
        {
            instance.stage1InfoDauphin = true;
        }
        else if (boolName == "stage1InfoADA1N")
        {
            instance.stage1InfoADA1N = true;
        }
        else if (boolName == "stage2InfoAlabaster")
        {
            instance.stage2InfoAlabaster = true;
        }
        else if (boolName == "stage2InfoDetG")
        {
            instance.stage2InfoDetG = true;
        }
        else if (boolName == "stage2InfoSleethy")
        {
            instance.stage2InfoSleethy = true;
        }
        else
        {
            Debug.Log("Invalid bool name in inky file");
        }
    }

    public static void NextScene(string scene)
    {
        if (scene == "stage1")
        {
            // SceneManager.LoadScene(instance.stage1SceneName); Edited it so that it includes Narrative Loader
            NarrativeLoader.narrativeLoader.StageInterrogation(1); //int parameter for interrogaition number must be a valid interrogation number scene
        }
        else if (scene == "stage2")
        {
            // SceneManager.LoadScene(instance.stage2SceneName); Edited it so that it includes Narrative Loader
            NarrativeLoader.narrativeLoader.StageInterrogation(2); //int parameter for interrogaition number must be a valid interrogation number scene
        }
        else if (scene == "GoodEnding")
        {
            //NarrativeLoader.narrativeLoader.StageInterrogation(?)
        }
        else
        {
            Debug.Log("Invalid scene code in Inky");
        }
    }
}
