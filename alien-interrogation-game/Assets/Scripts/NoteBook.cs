using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class NoteBook : MonoBehaviour
{
    public string question1;
    public string question2;
    public string question3;
    public Button backButton;
    public Button nextButton;
    public GameObject notebookBody;
    public GameObject notebookTitle;
    public bool isTutorial = false;
    public List<string> facts = new List<string>();
    private int page;
    private int prevIndex = 15;
    private int prevPage = 7;
    private List<string> notebook = new List<string>();
    TMP_Text message;
    TMP_Text title;

    private void Start()
    {
        page = 0;
        backButton.onClick.AddListener(backButtonClicked);
        nextButton.onClick.AddListener(nextButtonClicked);

        message = notebookBody.GetComponent<TextMeshProUGUI>();
        title = notebookTitle.GetComponent<TextMeshProUGUI>();

        //initializes list with empty strings
        int i = 0;
        while (i <= 15)
        {
            notebook.Add("");
            i++;
        }
    }


    //updates the notebook to display the known facts on the current page
    //there should be a unique index for every possible fact
    private void Update()
    {
        //gets current index, should be 15 if no facts have been found yet
        int index = GameValueManager.CurrIndex;
        //Debug.Log(index);
        //int index = 0;
        
        //adds newly found fact if it's not already in the notebook and if index has been changed from it's default value
        if (notebook[index] == "" && index <= 14)
        {
            notebook[index] = facts[index];
        }

        //only updates notebook if first time, if page changed, or if index changed
        if (prevIndex == 15 || page != prevPage || index != prevIndex)
        {
            if (isTutorial == false)
            {
                if (page == 0)
                {
                    title.text = "Page 1";
                    message.text = "1. " + question1 + "\n-" + notebook[0];
                    message.text += "\n\n2. " + question2 + "\n-" + notebook[1];
                    message.text += "\n\n3. " + question3 + "\n-" + notebook[2];
                }
                else if (page == 1)
                {
                    title.text = "Page 2";
                    message.text = "1. " + question1 + "\n-" + notebook[0];
                    message.text += "\n\n2. " + question3 + "\n-" + notebook[3];
                    message.text += "\n\n3. " + question2 + "\n-" + notebook[4];
                }
                else if (page == 2)
                {
                    title.text = "Page 3";
                    message.text = "1. " + question2 + "\n-" + notebook[5];
                    message.text += "\n\n2. " + question1 + "\n-" + notebook[6];
                    message.text += "\n\n3. " + question3 + "\n-" + notebook[7];
                }
                else if (page == 3)
                {
                    title.text = "Page 4";
                    message.text = "1. " + question2 + "\n-" + notebook[5];
                    message.text += "\n\n2. " + question3 + "\n-" + notebook[8];
                    message.text += "\n\n3. " + question1 + "\n-" + notebook[9];
                }
                else if (page == 4)
                {
                    title.text = "Page 5";
                    message.text = "1. " + question3 + "\n-" + notebook[10];
                    message.text += "\n\n2. " + question1 + "\n-" + notebook[11];
                    message.text += "\n\n3. " + question2 + "\n-" + notebook[12];
                }
                else if (page == 5)
                {
                    title.text = "Page 6";
                    message.text = "1. " + question3 + "\n-" + notebook[10];
                    message.text += "\n\n2. " + question2 + "\n-" + notebook[13];
                    message.text += "\n\n3. " + question1 + "\n-" + notebook[14];
                }
            }
            else
            {
                if (page == 0)
                {
                    title.text = "Page 1";
                    message.text = "1. " + question1 + "\n-" + notebook[0];
                    message.text += "\n\n2. " + question2 + "\n-" + notebook[1];
                    message.text += "\n\n3. " + question3 + "\n-" + notebook[2];
                }
                else if (page == 1)
                {
                    title.text = "Page 2";
                    message.text = "1. " + question2 + "\n-" + notebook[5];
                    message.text += "\n\n2. " + question1 + "\n-" + notebook[6];
                    message.text += "\n\n3. " + question3 + "\n-" + notebook[7];
                }
                else if (page == 2)
                {
                    title.text = "Page 3";
                    message.text = "1. \n-\n\n2. \n-\n\n3. \n-";
                }
                else if (page == 3)
                {
                    title.text = "Page 4";
                    message.text = "1. \n-\n\n2. \n-\n\n3. \n-";
                }
                else if (page == 4)
                {
                    title.text = "Page 5";
                    message.text = "1. \n-\n\n2. \n-\n\n3. \n-";
                }
                else if (page == 5)
                {
                    title.text = "Page 6";
                    message.text = "1. \n-\n\n2. \n-\n\n3. \n-";
                }
            }
        }

        prevIndex = index;
        prevPage = page;
    }


    //changes the page
    private void backButtonClicked()
    {
        if (page == 0)
        {
            page = 5;
        }
        else
        {
            page--;
        }
    }


    private void nextButtonClicked()
    {
        if (page == 5)
        {
            page = 0;
        }
        else
        {
            page++;
        }
    }


    //void addFact(string fact)
    //{
    //    int index = GameValueManager.CurrIndex; //should be CurrIndex just don't know how to use the function yet
    //    notebook[index] = fact;
    //}
}
