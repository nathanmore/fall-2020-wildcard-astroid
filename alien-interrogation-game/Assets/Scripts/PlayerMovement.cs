using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    [SerializeField]
    private float moveSpeed = 5f;

    public Rigidbody2D rb;

    Vector2 movement;

    public static PlayerMovement playerMovement;

    private bool allowed;

    private SpriteRenderer sprite;

    // Start is called before the first frame update
    void Start()
    {
        playerMovement = this;
        allowed = true;

        sprite = GetComponent<SpriteRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            MenuSettings.menuSettings.Open();
        }
        if (allowed)
        {
            movement.x = Input.GetAxisRaw("Horizontal");
            if (movement.x > 0)
                sprite.flipX = false;
            else if (movement.x < 0)
                sprite.flipX = true; 
            movement.y = Input.GetAxisRaw("Vertical");
        }
    }
    private void FixedUpdate()
    {
        rb.MovePosition(rb.position + movement * moveSpeed * Time.fixedDeltaTime);
    }

    public void AllowMovemnet(bool movement)
    {
        allowed = movement;
    }
}
