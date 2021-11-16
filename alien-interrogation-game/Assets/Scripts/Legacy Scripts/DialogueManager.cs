using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour
{
    //used for displaying the name and sentences in the UI
    public Text nameText;
    public Text dialogueText;

    //used to make the text box appear and disappear 
    public Animator animator;

    //queue to contain all sentences that will be displayed
    private Queue<string> sentences;
    //array to contain each button for each choice
    private Button[] currentChoices;

    void Start()
    {
        //initializes the sentences queue
        sentences = new Queue<string>();
    }

    public void StartDialogue(Dialogue dialogue, Button[] choices)
    {
        //brings up the text box
        animator.SetBool("IsOpen", true);

        //gets the name so it can be displayed
        nameText.text = dialogue.name;

        //clears out any old sentences that might still be in the queue
        sentences.Clear();

        //adds each sentence from the dialogue object to the sentences queue
        foreach (string sentence in dialogue.sentences)
        {
            sentences.Enqueue(sentence);
        }

        //sets the currentChoices array equal to the choices array, not sure if this works
        //prob have to increment and add each item individually 
        currentChoices = choices;

        DisplayNextSentence();
    }

    public void DisplayNextSentence()
    {
        //ends dialogue if no sentences are left
        if (sentences.Count == 0)
        {
            EndDialogue();
            return;
        }

        //gets next sentence from the sentences queue
        string sentence = sentences.Dequeue();
        //get's the sentence so it can be displayed
        dialogueText.text = sentence;
        //stops sentence animation if one is still going
        StopAllCoroutines();
        //types out the sentence letter by letter
        StartCoroutine(TypeSentence(sentence));
    }

    //types out the given sentence letter by letter
    IEnumerator TypeSentence(string sentence)
    {
        dialogueText.text = "";
        foreach (char letter in sentence.ToCharArray())
        {
            dialogueText.text += letter;
            yield return null;
        }
    }

    
    //closes dialogue box then displays choices
    void EndDialogue()
    {
        animator.SetBool("IsOpen", false);
        DisplayChoices();
    }


    //displays choices
    void DisplayChoices()
    {
        //allows us to do a little animation for the choices showing up
        animator.SetBool("ChoicesVisible", true);

        //activates each choice button so it can be pressed
        foreach (Button choice in currentChoices)
        {
            choice.gameObject.SetActive(true);
        }
    }
}
