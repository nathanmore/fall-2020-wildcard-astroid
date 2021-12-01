-> BEGINNING

=== BEGINNING ===
#name boss
Good job on your interrogation. 
I think you did quite well.
#name player
Thanks, Boss. 
#name Boss 
Now for the details:
We think the crime occured three relative days ago, in the evidence room. 
A blaster was discharged in that room three relative days ago, as well.
#name player 
Well, that gives us some early leads.
Mr. Dauphin should have footage of the room, so I can ask him for that.
ADA1N is responsible for armaments on the mothership, they should be wary of a discharged blaster.
#name Boss 
Wow, I didn't even have to clue you in.
#name player 
I worked here a long time Boss. I still know my way around the place.
#name Boss 
Yeah, you still got it.
Keep this investigation on the down low out there.
And remember, the suspect also has a Neuralyzer. You'll have to keep that in mind when interrogating witnesses.

->MENU

==MENU==
You got all that?

+I'm ready!     -> Ready
+I'm not ready  -> NotReady
+Hit me with the specs again -> Specs

=== Ready ===
#transition stage1
-> END

==Specs==
#name Boss 
We think the crime occured three relative days ago, in the evidence room. 
A blaster was discharged in that room three relative days ago, as well.
#name player 
(Mr. Dauphin should have footage of the room, so I can ask him for that.
ADA1N is responsible for armaments on the mothership, they should be wary of a discharged blaster.)
(And, the suspect also has a Neuralyzer, which means witnesses may be giving unreliable testimony.)
->MENU

=== NotReady ===
#name boss
Well don't take too long. I need you on this case ASAP.
     -> DONE
     

=== DONE ===
     #name Boss
     Are you ready to start your investigation?
     #name player
     +I'm ready!     -> Ready
     +I'm not ready  -> NotReady
     +Hit me with the specs again -> Specs

