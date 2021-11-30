#index 15
#name intern 
Hi, I was hoping to apply for the internship position!
#name player 
You certainly have the gusto for it.
#name intern 
Thanks! 
#name player 
You looking to be a detective, a beat cop, maybe management?
#name intern 
Whatever your job is! 
#name player 
(That sounded like it came straight out of a book).


->BEGINNING

=== BEGINNING ===
VAR cont1 = false
VAR cont2 = false
VAR cont3 = false
VAR cont4 = false

#name player
(Well, I don't feel like doing any more small talk. I suppose I'll just have to start asking questions.)

+What was your last place of work? 
    -> Tree1
+What do you value in your workplace? 
    -> Tree2

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
#index 0
#name player 
Don't worry, the Boss never yells at people. And he only occasionally takes nibbles.
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
    To my knowledge, this precinct is, in fact, an equal opportunity employer. 
    With the exception of artificial intelligence.  Our superiors still can't decide if those should get people rights.
    #name intern 
    I'm very much a "robot-rights" person, that won't be a problem, will it?
    #name player 
    No, probably not.
    Mvoing on, I do want to warn you, this IS a precinct for criminals, so we can't really guarantee your safety.
    But, we CAN guarantee that everyone at the precinct respects you. We have a zero tolerance for hazing, ghosting, and gaslighting.
    #index 1
    #name intern 
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
#index 5
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
    #index 6
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
Oh, I think I misheard something.
(Shoot. I should memory wipe them and get back to where I was).
#return ToSave
#index 15
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
Oh, mother of science! I didn't know you had that!
#name player
We have a lot of secretive methods. You'll learn them on the job. 
Now fess up. You goofed.
#name intern 
I'm sorry, I did lie! I gave that whole speech about loyalty, I didn't want to sabotage myself! 
#name player 
Sometimes that's the best play.
#found tutorialInternInfo
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
Shush. You'll learn on the job.
#found tutorialInternInfo
->DONE

=== DONE ===
{cont4 == true: ->DONE3}
{cont3 == true: -> DONE2}
#name intern 
Do you have any more questions?
#name player
Uhm, I can't really think of any more at the moment.
#name player 
(All right C, you're out of questions. Time to scrub the brain clean!)
(Remember, best practice says you apply the same stimuli to the subject, so be sure to ask the same question after using the Neuralyzer!)
~cont3 = true
#index 15
->END

=DONE2
#name player 
Hmm, I was hoping to spot the contradiction. I don't think I found it yet.
#name intern 
Contradiction? 
#name player 
(Oops. I spoke that out loud. Oh well, it doesn't matter).
(I should try confronting them on their contradictory statement for maximum effect next time).
#index 15
->END

=DONE3
#name intern 
Hi, I was hoping to apply for the internship position!
#name player 
Nice to meet you. The Boss will be conducting your interview.
I wouldn't sweat it, though. 2 years on borders and customs is pretty good.
#name intern 
Thanks...? Wait, how'd you-
#name player 
I'm a detective. I do this for a living.
#name intern 
Woooow...
#index 15
->END