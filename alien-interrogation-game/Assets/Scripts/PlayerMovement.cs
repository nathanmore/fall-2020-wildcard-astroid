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

    private Animator animator;

    // Start is called before the first frame update
    void Start()
    {
        playerMovement = this;
        allowed = true;

        sprite = GetComponent<SpriteRenderer>();

        animator = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            MenuSettings.menuSettings.Open();
        }
        if (allowed)
        {
            movement.x = Input.GetAxisRaw("Horizontal");
            if (movement.x > 0)
            {
                sprite.flipX = false;
                animator.SetBool("SideWalking", true);
            }
            else if (movement.x < 0)
            {
                sprite.flipX = true;
                animator.SetBool("SideWalking", true);
            }
            else 
                animator.SetBool("SideWalking", false);

            movement.y = Input.GetAxisRaw("Vertical");

            if (movement.y > 0)
            {
                animator.SetBool("Backwards", true);
            }
            else if (movement.y < 0)
            {
                animator.SetBool("Forwards", true);
            }
            else
            {
                animator.SetBool("Forwards", false);
                animator.SetBool("Backwards", false);
            }
        }
    }
    private void FixedUpdate()
    {
        rb.MovePosition(rb.position + movement * moveSpeed * Time.fixedDeltaTime);
    }

    public void AllowMovement(bool movement)
    {
        allowed = movement;
    }
}
