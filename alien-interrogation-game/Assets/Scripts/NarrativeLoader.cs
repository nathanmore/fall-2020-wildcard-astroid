using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement; 

public class NarrativeLoader : MonoBehaviour
{
    public Animator transition;
    public float transitionTime = 1f;

    [SerializeField]
    private string firstSceneName = "Tutorial_Int";

    public static NarrativeLoader narrativeLoader;
    public enum Scene
    {
        TitleScreen,
        Tutorial_Int,
        Stage1_Interrogation,
        Stage2_Interrogation,
        ConfrontingAccused,
        BadEnding,
        GoodEnding
    }
    public void Awake()
    {
        narrativeLoader = this;
    }
    public void StartGame()
    {
     
        // This method call was not working for me so I switched to using scene name at least for now - N.M.
        //StartCoroutine(NextLevel(SceneManager.GetActiveScene().buildIndex + 1));
        //I don't thnk we need this
        //StartCoroutine(TransitionStr(firstSceneName));
    }

    public void LoadNextLevel()
    {
        StartCoroutine(TransitionInt(SceneManager.GetActiveScene().buildIndex + 1));
    }
    
    public void TitleScreen()
    {
        StartCoroutine(TransitionStr(Scene.TitleScreen.ToString()));
    }

    public void TutorialScence()
    {
        StartCoroutine(TransitionStr(Scene.Tutorial_Int.ToString()));
    }

    public void StageInterrogation(int stageNumber)
    {
        if (stageNumber == 2)
        {
            StartCoroutine(TransitionStr(Scene.Stage2_Interrogation.ToString()));
        }
        else if (stageNumber == 1)
        {
            StartCoroutine(TransitionStr(Scene.Stage1_Interrogation.ToString()));
        }
        else
            Debug.Log("Stage number " + stageNumber + "does not exist.");       
    }

    public void ConfrontingScene()
    {
        StartCoroutine(TransitionStr(Scene.ConfrontingAccused.ToString()));
    }

    public void Ending(bool good)
    {
        if (good)
        {
            Debug.Log("passed");
            StartCoroutine(TransitionStr(Scene.GoodEnding.ToString()));
        }
        if (!good)
            StartCoroutine(TransitionStr(Scene.BadEnding.ToString()));      
    }

    IEnumerator TransitionInt(int levelIndenx)
    {
        transition.SetTrigger("End");

        yield return new WaitForSeconds(transitionTime);

        SceneManager.LoadScene(levelIndenx);
    }

    IEnumerator TransitionStr(string levelName)
    {
        transition.SetTrigger("End");

        yield return new WaitForSeconds(transitionTime);

        SceneManager.LoadScene(levelName);
    }

}
