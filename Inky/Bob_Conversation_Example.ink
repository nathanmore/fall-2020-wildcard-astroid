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
->END

== Bad ==
#name Me
Not so well to be honest.
#name Bob
Well you better get back to the grind then.
-> END

=== Donut ===
+ [Yes] -> yes
+ [No] -> no
->END

=== yes ===
#name Me
Yes, thank you.
-> END

=== no ===
#name Me
No thanks. -> END

=== DONE ===
#name Bob
Get to work.
-> END