using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement; 

public class NarrativeLoader : MonoBehaviour
{
    public Animator transition;

    public float transitionTime = 1f;

    public string firstSceneName = "Tutorial_Int";
    public void StartGame()
    {
        // This method call was not working for me so I made override with scene name instead and just created string to hold first scene name. - N.M.
        //StartCoroutine(NextLevel(SceneManager.GetActiveScene().buildIndex + 1));

        StartCoroutine(NextLevel(firstSceneName));
    }
    IEnumerator NextLevel (int levelIndenx)
    {
        transition.SetTrigger("End");

        yield return new WaitForSeconds(transitionTime);

        SceneManager.LoadScene(levelIndenx);
    }

    IEnumerator NextLevel(string levelName)
    {
        transition.SetTrigger("End");

        yield return new WaitForSeconds(transitionTime);

        SceneManager.LoadScene(levelName);
    }
}
