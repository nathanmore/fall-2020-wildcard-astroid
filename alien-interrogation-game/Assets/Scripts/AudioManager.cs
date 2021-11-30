using UnityEngine.Audio;
using System;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    public Sounds[] sounds;

    public static AudioManager audioManager;

    public AudioMixer audioMixer;

    private AudioMixerGroup groups;

    void Awake()
    {
        AudioMixerGroup[] groups = audioMixer.FindMatchingGroups("Master");

        if (audioManager == null)
        {
            audioManager = this;
            DontDestroyOnLoad(audioManager);
        }
        else
        {
            Destroy(gameObject);
            return;
        }

        foreach (Sounds s in sounds)
        {
            bool assigned = false;
            s.source = gameObject.AddComponent<AudioSource>();
            s.source.clip = s.clip;
            s.source.volume = s.volume;
            s.source.pitch = s.pitch;
            s.source.loop = s.loop;
            s.source.mute = s.mute;

            foreach(AudioMixerGroup a in groups)
            {
                if (a.name == s.audioMixer) 
                {
                    s.source.outputAudioMixerGroup = a;
                    assigned = true;
                }                       
            }

            if (!assigned) {
                s.source.outputAudioMixerGroup = groups[0]; 
                //Debug.Log("Assigned to Master");
            }
        }            
    }
    private void Start()
    {
        PlayAudio("Background Music");
        PlayAudio("Walking Sounds");
    }

    public void PlayAudio(string musName)
    {
        Sounds s = Array.Find(sounds, sounds => sounds.name == musName);
        if (s == null)
        {
            //Debug.Log("Sound : " + musName + " was not found.");
            return; 
        }
        //Debug.Log("Playing " + musName);
        s.source.Play();
    }


}
