
#name player
This technology is dangerous, Detective C.
Before you leave my office I am required to instruct you on its use.
#name player
I'm ready.
#name player 
Your neuralyzer device causes memory loss. A safety has been included to maximize the loss to ten seconds.
This is a theta-level clearance. You are authorized to use it on anybody you wish, except yourself.
The neuralyzer is meant to help you discreetly draw out lies. Nobody can know of its existence.
#name player
Seems simple enough.
#name player
I'm supposed to test your capabilities before you leave.
Rose, call in the new intern, would you?
#name Intern
Hello! Please to meet you! I'm very grateful to be extended this opportunity, I love it here, the space is gorgeous, just give the word and I'll get to work! Oh I'm so sorry I'm blathering on about myself and I did't mean to I'm ju-
#name player
Shush, for just a moment. Detective C. has a few questions for you about your resume.


->BEGINNING

==BEGINNING==
VAR cont1 = false
VAR cont2 = false
VAR cont3 = false
VAR cont4 = false

#name player
(I didn't expect player to suddenly put me on the spot like this. I suppose I'll just have to start asking questions.)

+What was your last place of work? -> Tree1
+What do you value in your workplace? -> Tree2

//What was your last place of work?
==Tree1==
=Root
#name intern
I worked border and customs patrol. Illegal aliens are a real problem on my planet.
#name player 
What kind of work did that entail?
#name intern
Oh! Uhm, I verified IDs and visas, filed documentation, and occasionally was sent to monitor the border.
#name player 
This one seems overqualified for an intern, boss.
How long did you work there?
#name intern
I did leave after only two relative years, because the working conditions were absolutely terrible. 
My old supervisor used to scream when papers weren't processed fast enough.
#name player 
Don't worry, I never yell at my empoyees. And I only every take nibbles out of them.
~ cont1 = true
/*
notes:
-Intern worked customs and border patrol
-Intern worked for 2 years
*/
//last place of work -> value
+++What do you value in your workplace?
    #name intern 
    Workplace safety is my foremost concern. I want to work in a place where I feel respected.
    #name player 
    This precinct is, in fact, an equal opportunity employer. 
    With the exception of artificial intelligence.  Our superiors still can't decide if those should get people rights.
    #name player 
    This IS a precinct for criminals, so we can't really guarantee your safety.
    But, we CAN guarantee that everyone at the precinct respects you. We have a zero tolerance for hazing, ghosting, and gaslighting.
    #intern 
    Not sure what all those terms are but that does sound nice.
/*
notes:
-intern values workplace safety
-intern's old work mistreated them
*/
    ->DONE

//value -> last place of work
==Tree2==
#name intern 
Loyalty is highly important to me. I want a place that will provide me with job security for at least 5 relative years to come.
#name player 
Well, you've come to the right place. First two relative years are guaranteed, if I recall.
Getting you here on a spacecraft was also pretty costly, so we try and avoid that as well.
#name intern 
That makes sense.
#name player 
Anything else you want in your workplace? 
#name intern 
Well, I actually have a lot more to say on this. 
I've had some...bad experiences in the past.
I have strong opinions on office morality, Creature Resources, hiring practices, workplace relationships, dress code, food quality, pension program, retirement program, insurance policy, tax benefits, employee discounts, friends and family visitation p-
#name player 
Ok, ok, that's enough. We'll move onto the next question.
/*
notes:
-Intern values company Loyalty
-Intern 's old work mistreated them
*/
+++What was your last place of work?
    #name intern 
    I worked border and customs patrol. My home planet has a problem with illegal aliens.
    #name player 
    And what did that work entail?
    #name intern
    Oh! Uhm, I verified IDs and visas, filed documentation, and occasionally was sent to monitor the border.
    #name player 
    And, uh, how long did you work there?
    #name intern 
    Oh, uhm, I stayed there for 12 relative years. I have references, they'll tell you I was a hard, dedicated worker..
    #name player 
    I'll leave reference checking to you, player.
    ~cont2 = true
/*
notes:
-intern worked border and customs patrol
-intern worked for 12 years
*/
    ->DONE
    
==CONTRADICTION==
=Default
{cont1 == true && Tree2 : -> Cont1}
{cont2 == true && Tree1 : -> Cont2}
#name intern 
Contradiction? What do you mean?
#name player 
I don't see a contradiction.
#name player 
Oh, I think I misheard something.
#name player 
Quick! Memory wipe! Now!
->END

=Cont1
~cont4 = true
#name player 
I know you want to impress, but lying about your experience is no way to get prospective employers to like you.
#name intern 
Huh? Lying? What?
#name player 
I have you on record as working only two years at customs. 
#name intern 
When did I say that?
#name player 
I have a memory loss device. You don't remember it. 
#name intern 
Oh, mother of science! I didn't know you had that?
#name player
We have a lot of secretive methods. You're learn them on the job. 
Now fess up. You goofed.
#name intern 
I'm sorry, I did lie! I gave that whole speech about loyalty, I didn't want to sabotage myself! 
#name player 
Sometimes that's the best play.
So, player? How was that?
#name player 
Good enough. Wipe them, you're free to begin your investigation.
->DONE

=Cont2
~cont4 = true
#name player 
Ah, and the truth comes out. Only 2 years at borders?
#name intern 
Well, yes. Did I say something?
#name player 
I have you on record as saying you did 12 years there.
#name intern 
I don't remember saying that. 
#name player 
I know. We have a memory loss device. I wiped your memory.
#name intern 
W-w-WHAT? Hello? Really? This isn't science fiction! 
#name player 
Shush. So, player, how did I do?
#name player 
Goode enough. Wipe them, you're free to begin your investigation.

->DONE

==DONE==
{cont4 == true: ->DONE3}
{cont3 == true: -> DONE2}
#name intern 
Do you have any more questions?
#name player
Uhm, I can't really think of any more at the moment.
#name player 
All right C, you're out of questions. Time to scrub the brain clean!
Remember, best practice says you apply the same stimuli to the subject, so be sure to ask the same question after using the neuralyzer!
#name intern 
Memory wipe? Stimuli?
#name player
Don't worry about it.
~cont3 = true
->END

=DONE2
#name player 
Well, C, did you find the contradiction?
#name player 
I think so?... 
Pretty sure I saw it.
#name player 
Good. Wipe their memory, go back to their response, and press them on it!
#name intern 
Wipe my memory?
#name player
They won't remember anything, how do I confront them?
#name player 
The neuralyzer records footage. Use that, then wipe them after.
#name player 
Got it.
->END

=DONE3
#name intern 
It's my first day here, pleased to meet you. 
#name player 
Good to meet you, too. 
Good luck on your interview, you will have had need of it.
#name intern 
Thanks, I think..?
->END