using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameValueManager : MonoBehaviour
{
    public static GameValueManager instance;

    bool point1 = false;
    bool point2 = false;
    bool atPoint = false;


    bool canConfront()
    {
        if (instance.point1 == true && instance.point2 == true && instance.atPoint == true)
        {
            return true;
        }

        return false;
    }


    void setPoint1(bool val)
    {
        instance.point1 = val;
    }


    void setPoint2(bool val)
    {
        instance.point2 = val;
    }


    void setAtPoint(bool val)
    {
        instance.atPoint = val;
    }
}
