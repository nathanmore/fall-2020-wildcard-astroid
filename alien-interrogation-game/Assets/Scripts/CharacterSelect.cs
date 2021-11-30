using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class CharacterSelect : MonoBehaviour
{
    public RectTransform[] charBtns;
    public RectTransform indicator;

    public GameObject notePad;
    private Button btn;

    private static int indicatorPos;
    [SerializeField] private int rowLenght;
    [SerializeField] private int rowDifference;
    private int firstRowIndex;

    public static CharacterSelect characterSelect;
 
    // Start is called before the first frame update
    void Awake()
    {
        characterSelect = this;
        indicator.localPosition = charBtns[0].localPosition;
        indicatorPos = 0;

        //gets the first index of the last row in case that the row is not fully complete
        firstRowIndex = (charBtns.Length - 1 - (rowLenght - 1)) + rowDifference; 
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Q))
        {
            Check(GetDisplayCI());
        }
       
        if (Input.GetKeyDown(KeyCode.D))
        {
            if(indicatorPos < charBtns.Length - 1)
            {
                indicatorPos++;            
            }
            else
            {
                indicatorPos = 0;                
            }
        }
        if (Input.GetKeyDown(KeyCode.A))
        {
            if (indicatorPos > 0)
            {
                indicatorPos--;
            }
            else
            {
                indicatorPos = charBtns.Length - 1;             
            }
        }
        if (Input.GetKeyDown(KeyCode.W))
        {
            if (indicatorPos - rowLenght >= 0)
            {
                indicatorPos -= rowLenght;
            }
            else if (indicatorPos >= 0 && indicatorPos <= (rowLenght - 1 - rowDifference))
            {
                indicatorPos = firstRowIndex + indicatorPos; //indicatorPos will be moved to the same row position but in the last row
            }
            else
            {
                indicatorPos = charBtns.Length - 1;
            }
        }
        if (Input.GetKeyDown(KeyCode.S))
        {
            
            if (indicatorPos + rowLenght <= charBtns.Length - 1)
            {
                indicatorPos += rowLenght;
            }
            else if (indicatorPos >= firstRowIndex && indicatorPos <= charBtns.Length - 1)
            {   
                indicatorPos = ((rowLenght - 1) - rowDifference) - ((charBtns.Length - 1) - indicatorPos); //indicatorPos will be moved to the same row position but in the first row
            }
            else
            {
                indicatorPos = charBtns.Length - 1;
            }
        }

        indicator.localPosition = charBtns[indicatorPos].localPosition;

        if (Input.GetKeyDown(KeyCode.E))
        {
          //  Debug.Log(indicatorPos);
            btn = charBtns[indicatorPos].gameObject.GetComponent<Button>();
            btn.targetGraphic.CrossFadeColor(btn.colors.pressedColor, btn.colors.fadeDuration, true, true);       
            NotePad();
        }
        else if (Input.GetKeyUp(KeyCode.E))
        {
            btn.targetGraphic.CrossFadeColor(btn.colors.normalColor, btn.colors.fadeDuration, true, true);
        }

    }
    public DisplayCI GetDisplayCI()
    {
        GameObject obj = charBtns[indicatorPos].gameObject;
        DisplayCI character = obj.GetComponent<DisplayCI>();
      //Debug.Log(obj.ToString());
        return character;
    }

    public void NotePad()
    {    
        notePad.SetActive(true);
        NotePadDisplay.notePad.SetChararectInfo(GetDisplayCI());
        gameObject.SetActive(false);
    }

    public void Check(DisplayCI charInfo)
    {
        if (charInfo.guilty)
        {
            gameObject.SetActive(false); //might need to change this if we are planning on being able to access the accusation canvas again
            NarrativeLoader.narrativeLoader.ConfrontingScene();
            // SceneManager.LoadScene("You Win");
        }
        else
            NarrativeLoader.narrativeLoader.Ending(false);
           // SceneManager.LoadScene("You Lose");
    }

}
