using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class MenuSettings : MonoBehaviour
{
    [SerializeField] private GameObject[] menus;
    [SerializeField] private AudioMixer audioMixer;

    private static int index;
    private static int prevIndex;
    public static MenuSettings menuSettings;

    public void Awake()
    {
        Debug.Log("Awaking");
        menuSettings = this;
    }

    public void Open()
    {
        index = 1;
        prevIndex = index - 1;
        menus[prevIndex].SetActive(true);
        menus[index].SetActive(true);
        Debug.Log(index);
    }
    public void AdjVolume(float volLevel)
    {
        audioMixer.SetFloat("MasterVolume", volLevel);
    }

    public void GoOptions()
    {
        
        index++;
        prevIndex = index - 1;
        menus[prevIndex].SetActive(false);
        menus[index].SetActive(true);

    }

    public void GoBack()
    {
        menus[index].SetActive(false);
        menus[prevIndex].SetActive(true);
        index--;
        prevIndex = index - 1;
    }
    public void Play()
    {
        menus[index].SetActive(false);
        menus[prevIndex].SetActive(false);
    }

    public void Quit()
    {
        Application.Quit();
    }

}
