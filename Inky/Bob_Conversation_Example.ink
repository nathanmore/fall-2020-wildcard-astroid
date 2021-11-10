VAR claim1 = false
VAR claim2 = false
-> Beginning
=== Beginning ===
#name Bob C
Hey, how is your case cominig?
-> Choices1

== Choices1 ==
+ [Good] -> Good
+ [Bad] -> Bad

== Good == 
#name Me
My cases are going well.
#name Bob
That is good to hear. Would you like a donut? -> Donut

== Bad ==
#name Me
Not so well to be honest. I could use a donut to encourage me though.
#name Bob
We're all out of donuts. You better just get back to work.
~ claim2 = true
{claim1 == true: -> Cont.Lie}
-> END

=== Donut ===
~claim1 = true
{claim2 == true: -> Cont.Question}
+++ [Yes]
#name Me
Yes, thank you -> END
+++ [No] 
#name Me
No thanks -> END

->END

=== Cont ===
= Lie
+++ [You're lying]
#name Me
You're lying, I know there are donuts!
#name Bob
Don't you get cross with me! Those donuts are for employees who show restults! Go get some! -> END
+++ [*Walk away*] -> END

= Question
#name Me
+++ You wouldn't have offered me a donut if my work wasn't going well would you?
#name Bob
Whaaat!!!? Don't be ridicoulous, of course I would have.
#name Me
Mmhmm... whatever. -> END
+++ [Yes]
#name Me
Yes, thank you -> END
+++ [No] 
#name Me
No thanks -> END

=== DONE ===
#name Bob
Get back to work.
-> END