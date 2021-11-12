using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowPlayer : MonoBehaviour
{
    [SerializeField] private Transform FishPosition;
    [SerializeField] private float speed;
    private float distance;
    public float noticed;
   
    // Update is called once per frame
    void Update()
    {
        distance = Vector2.Distance(transform.position, FishPosition.position);
        if(distance > noticed)
        transform.position = Vector2.MoveTowards(transform.position,FishPosition.position, speed);       
    }

}
