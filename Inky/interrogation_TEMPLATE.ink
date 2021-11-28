


->BEGINNING

==BEGINNING==


VAR const1 = false
VAR const2 = false

+ choice1 -> Tree1
+ choice2 -> Tree2
+ choice3 -> Tree3



==Tree1==

=Root

+choice2 -> branch1
+choice3 -> branch2

    =branch1

        ++choice3
    
        ->DONE
    
    =branch2

        ++choice2
    
        ->DONE
    
    
==Tree2==

=Root

+choice1 -> branch1
+choice3 -> branch2

    =branch1

        ++choice3
    
        ->DONE
    
    =branch2

        ++choice1
    
        ->DONE
        
==Tree3==

=Root

+choice1 -> branch1
+choice2 -> branch2

    =branch1

        ++choice2
    
        ->DONE
    
    =branch2

        ++choice1
    
        ->DONE
        
==CONTRADICTION==

=Default

->DONE
=Cont1

->DONE

=Cont2

->DONE


==DONE==
=Default
->END

=done1
->END

=done2
->END
