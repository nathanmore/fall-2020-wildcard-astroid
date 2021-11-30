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
        menuSettings = this;
    }

    public void Open()
    {
        AudioManager.audioManager.PlayAudio("Beep Sound");
        index = 1;
        prevIndex = index - 1;
        menus[prevIndex].SetActive(true);
        menus[index].SetActive(true);
       // Debug.Log(index);
    }
    public void Close()
    {
        AudioManager.audioManager.PlayAudio("Beep Sound");
        for (int i = index; i > 1; i--)
            GoBack();
        index--;
        menus[index].SetActive(false);
    }
    public void AdjVolume(float volLevel)
    {
        audioMixer.SetFloat("MasterVolume", volLevel);
    }

    public void GoOptions()
    {
        AudioManager.audioManager.PlayAudio("Beep Sound");
        index++;
        prevIndex = index - 1;
        menus[prevIndex].SetActive(false);
        menus[index].SetActive(true);

    }

    public void GoBack()
    {
        AudioManager.audioManager.PlayAudio("Beep Sound");
        menus[index].SetActive(false);
        menus[prevIndex].SetActive(true);
        index--;
        prevIndex = index - 1;
    }
    public void Play()
    {
        AudioManager.audioManager.PlayAudio("Beep Sound");
        menus[index].SetActive(false);
        menus[prevIndex].SetActive(false);
        PlayerMovement.playerMovement.AlreadyOpened(false);
    }

    public void Quit()
    {
        Application.Quit();
    }

}
