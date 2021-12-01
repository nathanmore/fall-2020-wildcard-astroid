using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameValueManager : MonoBehaviour
{
    public static GameValueManager instance;

    [SerializeField]
    private bool debugging = false;

    public static int savedStageNum;

    // Bools used to track player info for scene transitions from tutorial to stage 1 and stage 1 to stage 2
    public bool tutorialInternInfo = false;
    public bool stage1InfoDauphin = false;
    public bool stage1InfoADA1N = false;
    public bool stage2InfoAlabaster = false;
    public bool stage2InfoDetG = false;
    public bool stage2InfoSleethy = false;

    public List<bool> info = new List<bool>();

    //used to record important pieces of info seen
    List<string> convoKnowledge = new List<string>();
    //used to track if important info has been gathered from each character
    List<bool> acuKnowledge = new List<bool>();

    public List<CharacterInfo> characters = new List<CharacterInfo>();

    private int currIndex;

    private void Start()
    {
        info = new List<bool>() { instance.tutorialInternInfo, instance.stage1InfoDauphin, instance.stage1InfoADA1N, instance.stage2InfoAlabaster, instance.stage2InfoDetG, instance.stage2InfoSleethy };
        instance.currIndex = 15;

        if (debugging == false)
        {
            // Loads what stage player is at
            savedStageNum = PlayerPrefs.GetInt("stage");
        }
        
        // Sets info booleans based on stage player is at
        if (savedStageNum == 1)
        {
            tutorialInternInfo = true;
        }
        else if (savedStageNum == 2)
        {
            tutorialInternInfo = true;
            stage1InfoDauphin = true;
            stage1InfoADA1N = true;
        }
        foreach (CharacterInfo c in instance.characters)
        {
            c.talked = false;
        }

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
            instance.info[0] = true;
        }
        else if (boolName == "stage1InfoDauphin")
        {
            instance.stage1InfoDauphin = true;
            instance.info[1] = true;
        }
        else if (boolName == "stage1InfoADA1N")
        {
            instance.stage1InfoADA1N = true;
            instance.info[2] = true;
        }
        else if (boolName == "stage2InfoAlabaster")
        {
            instance.stage2InfoAlabaster = true;
            instance.info[3] = true;
        }
        else if (boolName == "stage2InfoDetG")
        {
            instance.stage2InfoDetG = true;
            instance.info[4] = true;
        }
        else if (boolName == "stage2InfoSleethy")
        {
            instance.stage2InfoSleethy = true;
            instance.info[5] = true;
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
            // Saves stage player is in
            savedStageNum = 1;
            PlayerPrefs.SetInt("stage", savedStageNum);

            // SceneManager.LoadScene(instance.stage1SceneName); Edited it so that it includes Narrative Loader
            NarrativeLoader.narrativeLoader.StageInterrogation(1); //int parameter for interrogaition number must be a valid interrogation number scene
        }
        else if (scene == "stage2")
        {
            // Saves stage player is in
            savedStageNum = 2;
            PlayerPrefs.SetInt("stage", savedStageNum);
            instance.characters[0].talked = false;

            // SceneManager.LoadScene(instance.stage2SceneName); Edited it so that it includes Narrative Loader
            NarrativeLoader.narrativeLoader.StageInterrogation(2); //int parameter for interrogaition number must be a valid interrogation number scene
        }
        else if (scene == "GoodEnding")
        {
            // Removes save so players can start new game
            ResetSave();

            NarrativeLoader.narrativeLoader.Ending(true);
        }
        else
        {
            Debug.Log("Invalid scene code in Inky");
        }
    }

    // Erases save data to start new game
    public static void ResetSave()
    {
        savedStageNum = 0;
        PlayerPrefs.SetInt("stage", savedStageNum);

        instance.tutorialInternInfo = false;
        instance.stage1InfoDauphin = false;
        instance.stage1InfoADA1N = false;
        instance.stage2InfoAlabaster = false;
        instance.stage2InfoDetG = false;
        instance.stage2InfoSleethy = false;
    }
}
