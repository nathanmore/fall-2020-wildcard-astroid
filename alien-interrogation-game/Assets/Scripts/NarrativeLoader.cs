using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement; 

public class NarrativeLoader : MonoBehaviour
{
    public Animator transition;

    public float transitionTime = 1f;
    public void StartGame()
    {
        StartCoroutine(LoadLevel(SceneManager.GetActiveScene().buildIndex + 1));
    }

    IEnumerator LoadLevel (int levelIndenx)
    {
        transition.SetTrigger("End");

        yield return new WaitForSeconds(transitionTime);

        SceneManager.LoadScene(levelIndenx);
    }

}
