-> Beginning
=== Beginning ===
VAR case1 = false
VAR case2 = false
#name Det. Bob
The weather sure is nice today.
Anyway, how is your case coming?
+ My case is going well. 
    -> Tree1.Root
+ Not so well to be honest. 
    -> Tree2.Root
+ [*Misdirection*] 
    -> Tree3.Root


=== Tree1 ===
= Root
     #name Det. Bob
     That is good to hear. Would you like a donut?
     ~ case1 = true
     + Yes please. 
        -> Branch1
     + No thanks. 
        -> Branch2

= Branch1
     #name Det. Bob
     Here you go *hands donut*. 
     Now you better get back to it.
     +++ Hey boss, any chance I could get a raise?
         #name Det. Bob
         What are you crazy?! 
         I just gave you a donut! 
         Get out of here! 
            -> DONE

= Branch2
     #name Det. Bob
     What, are you too good for my donuts?
     #name Me
     No, I am just tired of donuts is all. We have them almost every day.
     +++ Aren't you a little sick of them?
        #name Det. Bob
        Of course not! I love donuts. Who wouldn't? 
        If you don't want one then that must mean you aren't working your hardest. 
            -> DONE

=== Tree2 ===
= Root
     #name Det. Bob
     Well then you better get working!
     + Could I have a donut to encourage me?
        -> Branch1
     + I'll get right to work. 
        -> Branch2

= Branch1
     #Name Det. Bob
      ~ case2 = true
     We're all out of donuts. 
     You better just get back to work. 
     + [*Walk away*] 
        -> DONE

= Branch2
     -> DONE

=== Tree3 ===
= Root
     #name Me 
     Hey did you see Joey poking around in evidence?
     #name Det. Bob
     WHAT??? He is suppose to be on suspension! 
     I have a few words for him! *Walks away* 
        -> DONE

= Branch1
     -> DONE
= Branch2
     -> DONE

=== Contradiction ===
= Default
     {case1 == true && Tree2.Branch1: -> Case1}
     {case2 == true && Tree1.Root: -> Case2}
     #name Me
     You're lying!
     #name Det. Bob
     What the hell are you talking about?!
     #name Me
     Uhhh... well... I just..
     #name Det. Bob
     You better just be getting back to work now before you run your mouth anymore!
        -> DONE
= Case1
     #name Me
     You wouldn't have offered me a donut if my work wasn't going well would you?
     #name Det. Bob
     Whaaat!!!? Don't be ridicoulous, of course I would have.
     #name Me
     Mmhmm... whatever. 
        -> DONE

= Case2
     #name Me
     You're lying! I know there are donuts!
     #name Det. Bob
     Don't you get cross with me! 
     Those donuts are for employees who show restults! 
     Now go get me some! 
        -> DONE

=== DONE ===
~ case1 = false
~ case2 = false
#name Det. Bob
Get back to work. 
    -> END