using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NoteBook : MonoBehaviour
{
    public string question1;
    public string question2;
    public string question3;
    public Button backButton;
    public Button nextButton;
    private int page;
    List<string> notebook = new List<string>();

    private void Start()
    {
        page = 0;
        backButton.onClick.AddListener(backButtonClicked);
        nextButton.onClick.AddListener(nextButtonClicked);

        //initializes list with empty strings
        int i = 0;
        while (i < 12)
        {
            notebook.Add("");
            i++;
        }
    }


    //updates the notebook to display the known facts on the current page
    //there should be a unique index for every possible fact
    private void Update()
    {
        if (page == 0)
        {
            //display page + /n +
            //question1 + /n + notebook[0] + /n + 
            //question2 + /n + notebook[1] + /n +
            //question3 + /n + notebook[2]
        }
        else if (page == 1)
        {
            //display page + /n +
            //display question1 + /n + notebook[0] + /n + 
            //question3 + /n + notebook[3] + /n +
            //question2 + /n + notebook[4]
        }
        else if (page == 2)
        {
            //display page + /n +
            //display question2 + /n + notebook[5] + /n + 
            //question1 + /n + notebook[6] + /n +
            //question3 + /n + notebook[7]
        }
        else if (page == 3)
        {
            //display page + /n +
            //display question2 + /n + notebook[5] + /n + 
            //question3 + /n + notebook[8] + /n +
            //question1 + /n + notebook[9]
        }
        else if (page == 4)
        {
            //display page + /n +
            //display question3 + /n + notebook[10] + /n + 
            //question1 + /n + notebook[11] + /n +
            //question2 + /n + notebook[12]
        }
        else if (page == 5)
        {
            //display page + /n +
            //display question3 + /n + notebook[10] + /n + 
            //question2 + /n + notebook[13] + /n +
            //question1 + /n + notebook[14]
        }
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


    void addFact(string fact)
    {
        int index = 0; //should be CurrIndex just don't know how to use the function yet
        notebook[index] = fact;
    }
}
