using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Layers : MonoBehaviour
{
    private float yPos;
    private int furnitureLayer;
    private int startLayer;
    private bool moved;
    private Collider2D collider1;
    private static Collider2D latestCollider;
    private SpriteRenderer playerSprite;
     // Start is called before the first frame update
    void Start()
    {
        playerSprite = GetComponent<SpriteRenderer>();
        startLayer = playerSprite.sortingOrder;
        moved = true;
        Collider2D[] colliders = GetComponentsInParent<Collider2D>();
        foreach(Collider2D c in colliders)
        {
            if (c.isTrigger == true)
                collider1 = c;   
        }
    }
    // Update is called once per frame
    void Update()
    {
        if (!moved && yPos < transform.position.y)
        {
            //Debug.Log("Put behind");
           playerSprite.sortingOrder = furnitureLayer - 1; 
        }
    }
    public void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Furniture" && collider1.IsTouching(collision) && collision.isTrigger == true)
        {
            //Debug.Log(collision.gameObject);
            latestCollider = collision;
           //Debug.Log("Latest " + latestCollider);
            yPos = collision.gameObject.transform.position.y;
            SpriteRenderer spr = collision.gameObject.GetComponent<SpriteRenderer>();
            furnitureLayer = spr.sortingOrder;
            moved = false;
        }
    }
    public void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.tag == "Furniture" && (collision == latestCollider && latestCollider.isTrigger == true))
        {
            //Debug.Log("Exiting " + collision.gameObject);
            playerSprite.sortingOrder = startLayer;
            //Debug.Log(playerSprite.sortingOrder);
            moved = true;
        }
    }
}
