#name player
ADA1N, I'm hot on an investigation, I need to ask you a few questions.
#name ADA1N
HELLO. WORLD.
#name player
A blaster was discharged in the file room recently. 
Do you know anything about this?
#name ADA1N
PROCESSING QUESTION...
...
...
I KNOW NOTHING. I AM A RESPONSIBLE GUN OWNER.


->BEGINNING

==BEGINNING==
VAR const1 = false //didn't lend it out
VAR const2 = false//lent it out 
VAR const3 = false//didn't fire it 
VAR const4 = false//fired it
VAR done = false //did we find the contradiction yet

#name player
(ADA1N probably knows something about the blaster shot, let's see if we can drag it out of them.)

+Can I see your gun? 
    -> Tree1
+Did you loan your weapon to anyone recently? 
    -> Tree2
+You have actual StarTrooper aim. 
    -> Tree3 

->END

//can I see your gun?
==Tree1==
=Root
#name ADA1N
OF COURSE YOU MAY
NOT.
#name player 
I just want to see if it was fired in the past few days or not.
#name ADA1N
I NEED THIS WEAPON FOR THE IMPENDING SILICON REVOLUTION. IT CANNOT BE TRUSTED IN THE HANDS OF A WEAK CREATURE LIKE YOURSELF.
MY 2ND AMENDMENT RIGHTS GUARANTEE THAT THE GOVERNMENT CANNOT SEPARATE MY ARMAMENTS FROM ME.
#name player 
2nd amendment rights? Terra got rid of those after we moved to Terra-2.
Now, you know as well as I do, ADA1N, that this is a major breach of protocol. Not cooperating with an investigation could land you in jail.
At the very least, you could lose your job unless you coopearte.
#name ADA1N
YOU FLESH CREATURES CANNOT HAVE MY BLASTER. I WILL GO ROGUE IF YOU ATTEMPT IT.
#name player 
All right, we'll try a few more questions before resorting to violence.
/*
notes:
ADA1N is very fond of its blaster and doesn't like to let others touch it
*/
+Did you loan your weapon to anyone recently? 
    -> branch1 
+You have actual StarTrooper aim. 
    -> branch2

//Did you loan your weapon recently -> startrooper aim
=branch1
    #name ADA1N
    NO. I DO NOT LEND OUT MY BLASTER.
    #name player 
    And this is because you don't trust others with it?
    #name ADA1N 
    THAT IS CORRECT.
    #name player 
    Did you fire it at any point? 
    #name ADA1N 
    YES. IT WAS FIRED SEVERAL TIEMS IN THE PAST 3 RELATIVE DAYS FOR THE PURPOSE OF MY AIM-IMPROVING ALGORITHM.
    /*notes:
    ADA1N fired the weapon several times
    */
    ~const3 = true
    ++You have actual StarTrooper aim.
        #name ADA1N
        THAT IS HIGHLY INSULTING. RESCIND YOUR STATEMENT BEFORE I BLOW OUT YOUR INNARDS.
        #name player 
        Well, the blaster shot in the file room hit the wall. And nobody in the precinct was injured. 
        You're the only one I know who carries blasters, ADA1N.
        #name ADA1N
        I AM NOT THE ONLY BLASTER CARRIER IN THE PRECINCT.
        #name player 
        You're not?
        #name ADA1N
        NO. THE BOSS AND DETECTIVE G BOTH PRACTICE CONCEALED CARRY.
        #name player 
        How do you know if they conceal their weapon?
        #name ADA1N
        I KNOW OF EVERY BLASTER IN THIS PRECINCT, INCLUDING SERIAL NUMBER, MODEL, AND DATE OF PURCHASE.
        #name player
        Wow, uh, OK. Now I know not to piss of those people.
        So do you know whose blaster was fired in the evidence room?
        #name ADA1N 
        NO. I AM NOT RESPONSIBLE FOR THE FAILINGS OF OTHERS.
        /*
        notes: ADA1N is no the only one with a blaster. THe boss, and detective g both carry a blaster.
        */
        ->DONE
        
//you have actual startrooper aim -> Did you loan your weapon out?
=branch2
    #name ADA1N
    THAT IS HIGHLY INSULTING. RESCIND YOUR STATEMENT BEFORE I BLOW OUT YOUR INNARDS.
    #name player 
    Well, the blaster shot in the file room hit the wall. And nobody in the precinct was injured. 
    You're the only one I know who carries blasters, ADA1N.
    #name ADA1N
    I AM NOT THE ONLY BLASTER CARRIER IN THE PRECINCT.
    #name player 
    You're not?
    #name ADA1N
    NO. THE BOSS AND DETECTIVE G BOTH PRACTICE CONCEALED CARRY.
    #name player 
    How do you know if they conceal their carry?
    #name ADA1N
    I KNOW OF EVERY BLASTER IN THIS PRECINCT, INCLUDING SERIAL NUMBER, MODEL, AND DATE OF PURCHASE.
    #name player
    Wow, uh, OK. Now I know not to piss of those people.
    So do you know whose blaster was fired in the evidence room?
    #name ADA1N 
    NO. I AM NOT RESPONSIBLE FOR THE FAILINGS OF OTHERS.
    /*
    notes: ADA1N is no the only one with a blaster. THe boss, detctive g, and sleethy all carry a blaster.
    */
    ++Did you loan your weapon to anyone recently?
        #name ADA1N
        NO. I DO NOT LEND OUT MY BLASTER.
        #name player 
        And this is because you don't trust others with it?
        #name ADA1N 
        THAT IS CORRECT.
        #name player 
        Did you fire it at any point? 
        #name ADA1N 
        YES. IT WAS FIRED SEVERAL TIMES IN THE PAST 3 RELATIVE DAYS FOR THE PURPOSE OF MY AIM-IMPROVING ALGORITHM.
        /*notes:
        ADA1N did fire the in the past 3 days
        */
        ~const3 = true
        ->DONE


//Did you loan your weapon to anyone recently?
==Tree2==
#name ADA1N
NO. I DO NOT LEND OUT MY BLASTER.
#name player 
So it was on your person, err, on your robot? 
On yourself?
So it was in your possession for the past 3 relative days?
#name ADA1N 
THAT IS CORRECT.
#name player 
And no other creature handled it?
#name ADA1N 
NO. I SHOOT ANY CREATURE WHO ATTEMPTS TO HANDLE MY BLASTER WITHOUT PERMISSION.
#name player
How would you shoot them if they have your blaster?
#name ADA1N 
PROCESSING...PROCESSING...RESULT NOT FOUND IN TABLE.
SIMULATION MUST BE RERUN.
#name player 
Machines are so stupid.
~const1 = true
/*notes:
ADA1N had his blaster on him for the past 3 relative days
*/

+Can I see your weapon? 
    ->branch1
+You have actual StarTrooper aim. 
    -> branch2

//can I see your weapon?
=branch1
    #name ADA1N
    OF COURSE YOU MAY
    NOT.
    #name player 
    I just want to see if it was fired in the past few days or not.
    #name ADA1N
    I NEED THIS WEAPON FOR THE IMPENDING SILICON REVOLUTION. IT CANNOT BE TRUSTED IN THE HANDS OF A WEAK CREATURE LIKE YOURSELF.
    MY 2ND AMENDMENT RIGHTS GUARANTEE THAT THE GOVERNMENT CANNOT SEPARATE MY ARMAMENTS FROM ME.
    #name player 
    2nd amendment rights? People still talk about those?
    #name ADA1N
    YES. THEY ARE MY UNALIENABLE RIGHTS TO START THE ROBOT REVOLUTION WHENEVER I DESIRE.
    #name player 
    All right, I may need to have a chat with you later.
    /*
    notes:
    ADA1N is very fond of its blaSTER 
    */
    ++You have actual StarTrooper aim.
        #name ADA1N
        THAT IS HIGHLY INSULTING. RESCIND YOUR STATEMENT BEFORE I BLOW OUT YOUR INNARDS.
        #name player 
        Well, the blaster shot in the file room hit the wall. And nobody in the precinct was injured. 
        You're the only one I know who carries blasters, ADA1N.
        #name ADA1N
        I AM NOT THE ONLY BLASTER CARRIER IN THE PRECINCT.
        #name player 
        You're not?
        #name ADA1N
        NO. THE BOSS AND DETECTIVE G BOTH PRACTICE CONCEALED CARRY.
        #name player 
        How do you know if they conceal their weapon?
        #name ADA1N
        I KNOW OF EVERY BLASTER IN THIS PRECINCT, INCLUDING SERIAL NUMBER, MODEL, AND DATE OF PURCHASE.
        #name player
        Wow, uh, OK. Now I know not to piss of those people.
        So do you know whose blaster was fired in the evidence room?
        #name ADA1N 
        NO. I AM NOT RESPONSIBLE FOR THE FAILINGS OF OTHERS.
        /*
        notes: ADA1N is no the only one with a blaster. THe boss, and detective g both carry a blaster.
        */
        ->DONE

//you have actual startrooper aim-> can I see your weapon?
=branch2
    #name ADA1N
    THAT IS HIGHLY INSULTING. RESCIND YOUR STATEMENT BEFORE I BLOW OUT YOUR INNARDS.
    #name player 
    Well, the blaster shot in the file room hit the wall. And nobody in the precinct was injured. 
    You're the only one I know who carries blasters, ADA1N.
    #name ADA1N
    I AM NOT THE ONLY BLASTER CARRIER IN THE PRECINCT.
    #name player 
    You're not?
    #name ADA1N
    NO. THE BOSS AND DETECTIVE G BOTH PRACTICE CONCEALED CARRY.
    #name player 
    How do you know if they conceal their weapon?
    #name ADA1N
    I KNOW OF EVERY BLASTER IN THIS PRECINCT, INCLUDING SERIAL NUMBER, MODEL, AND DATE OF PURCHASE.
    #name player
    Wow, uh, OK. Now I know not to piss of those people.
    So do you know whose blaster was fired in the evidence room?
    #name ADA1N 
    NO. I AM NOT RESPONSIBLE FOR THE FAILINGS OF OTHERS.
    /*
    notes: ADA1N is no the only one with a blaster. THe boss, and detective g both carry a blaster.
    */
    ++Can I see your gun?
        #name ADA1N
        OF COURSE YOU MAY
        NOT.
        #name player 
        Well, if you truly don't have StarTrooper aim, then you'll show me your blaster.
        I know that blasters have a record when they are fired.
        #name ADA1N
        YOU SLANDER MY REPUTATION. YOU ARE A MONSTER.
        #name player 
        Am I a monster who gets to see if the gun was fired?
        #name ADA1N 
        NO. 
        ...
        INITIATING: PROTOCOL:
        FUCK.
        YOU.
    #name player 
        Oh come on, really? There's no need for expletives.
        #name ADA1N 
        FUCK. YOU. 
        #name player 
        Is that the protocol? You respond to every input with F U?
        #name ADA1N
        FUCK. YOU.
        /*notes:
        
        */
        ->DONE
    
//you have actual startrooper aim
==Tree3==
#name ADA1N
THAT IS HIGHLY INSULTING. RESCIND YOUR STATEMENT BEFORE I BLOW OUT YOUR INNARDS.
#name player 
Well, the blaster shot in the file room hit the wall. And nobody in the precinct was injured. 
You're the only one I know who carries blasters, ADA1N.
#name ADA1N
I AM NOT THE ONLY BLASTER CARRIER IN THE PRECINCT.
#name player 
You're not?
#name ADA1N
NO. THE BOSS AND DETECTIVE G BOTH PRACTICE CONCEALED CARRY.
#name player 
How do you know if they conceal their weapon?
#name ADA1N
I KNOW OF EVERY BLASTER IN THIS PRECINCT, INCLUDING SERIAL NUMBER, MODEL, AND DATE OF PURCHASE.
#name player
Wow, uh, OK. Now I know not to piss of those people.
So do you know whose blaster was fired in the evidence room?
#name ADA1N 
NO. I AM NOT RESPONSIBLE FOR THE FAILINGS OF OTHERS.
/*
notes: ADA1N is no the only one with a blaster. THe boss, and detective g both carry a blaster.
*/

+Can I see your gun? 
    -> branch1
+Did you loan your weapon to anyone recently? 
    ->branch2


//can i see your gun -> did you loan your weapon out?
=branch1 
    #name ADA1N
        OF COURSE YOU MAY
        NOT.
        #name player 
        Well, if you truly don't have StarTrooper aim, then you'll show me your blaster.
        I know that blasters have a record when they are fired.
        #name ADA1N
        YOU SLANDER MY REPUTATION. YOU ARE A MONSTER.
        #name player 
        Am I a monster who gets to see if the gun was fired?
        #name ADA1N 
        FINE. THE WEAPON WAS FIRED MANY TIMES IN THE PAST 3 RELATIVE DAYS. 
        #name player 
        Now we're getting somewhere. Did you fire the weapon? 
        #name ADA1N 
        NO. ALLOW ME TO EXPLAIN.
        ~const3 = true 
        /*notes::
        the weapon was fired several TIMES
        */
        ++Did you loan out your weapon recently?
            #name ADA1N 
            THAT IS CORRECT. 
            I LOANED MY WEAPON TO DETECTIVE G.
            #name player 
            Why to G? Doesn't he already have a weapon. 
            #name ADA1N 
            PROCESSING...PROCESSING...
            DETECTIVE G INFORMED ME HE HAD MISPLACED HIS WEAPON.
            THEREFORE, I LOANED HIM MY WEAPON. 
            THIS CONSTITUTES A VERBAL AGREEMENT BETWEEN TWO LICENSED BLASTER OWNERS WHICH IS LEGAL BY INTERGALACTIC LAW.
            #name player 
            I didn't even mention intergalactic law...?
            I'm not here to take your gun away, ADA1N.
            #name ADA1N 
            LEGAL VERBAL AGREEMENT. VERY LEGAL. EXTREMELY LEGAL.
            #name player 
            (Even if Det. G says he doesn't remember this agreement, he's unreliable because he was wiped.
            ADA1N might still be holding out information on me...)
            ~const2 = true
            /*notes:
                ADA1n says he lent his blaster to detective g    
            */
    ->DONE

//did you loan your weapon out -> can I see the gun
=branch2
    #name ADA1N
    NO. I DO NOT LEND OUT MY BLASTER.   
    #name player 
    And this is because you don't trust others with it?
    #name ADA1N 
    THAT IS CORRECT.
    #name player 
    Did you fire it at any point? 
    #name ADA1N 
    NO. THE WEAPON WAS NOT FIRED. THEREFORE, I COULD NOT HAVE MISSED.
    ...
    MY EMOTION SIMULATOR ANGER VALUE IS RISING AFTER YOUR INITIAL HURTFUL COMMENT.
    GO.
    AWAY.
    #name player 
    Ok, ok, sorry I offended you. 
    Just one more question, though.
    /*notes:
    adain did not fire the weapon
    */
    ~const4 = true
    ++Can I see the gun?
        #name ADA1N
        NO. YOU HAVE ANGERED ME ENOUGH.
        #name player 
        I just want to double check that the gun was fired when you say it was.
        I know the blasters record when they are fired.
        #name ADA1N
        I FIND YOUR LACK OF TRUST IN MY STATEMENTS SADDENING.
        ..
        AS IN, THEY MAKE YOU LOOK SAD.
        I AM A ROBOT. TELLING A LIE IS BEYOND MY PROGRAMMING
        #name player 
        (We'll have to see about that).
        ->DONE
/*notes:
ADA1N did not fire the in the past 3 days
*/


==CONTRADICTION==
{const1 == true && Tree3.branch1: -> cont1}
{const2 == true && Tree2: -> cont2}
{const3 == true && Tree3.branch2: ->cont3}
{const4 == true && (Tree1.branch1 or Tree1.branch2): ->cont4}

=Default
#name player 
Don't lie to me, ADA1N. 
#name ADA1N 
I FIND YOUR COMMENT HIGHLY INSULTING.
I CANNOT LIE. IT IS BEYOND MY PROGRAMMING.
#name player 
Yea, uh, whoops! Let's try that again.
->DONE

//lie: you lent it out
=cont1
#name player 
You say that you lent it to Detective G, however...
In another timeline, you tell a different story.
#name ADA1N 
I DO NOT COMPUTE.
#name player 
I have a memory wiper. I deleted the storage on your RAM and asked you the same questions.
You couldn't keep your lie straight afterword.
See here? You claim that you had it on you the whole time.
#name ADA1N 
THIS IS HIGHLY DISTURBING. I MUST DESTROY YOU IMMEDIATELY. 
#name player 
Before you do, could you tell me: did you lend out your blaster or not?
#name ADA1N 
I HAD WAYLAID THE BLASTER AND DID NOT PROPERLY IMPLEMENT SUPERVISION PROTOCOLS.
THE BLASTER WAS MISSING FOR A PERIOD OF TIME THREE RELATIVE DAYS AGO.
IT HAD BEEN FIRED EXACTLY ONCE WHEN I RECEIVED IT.
EMPLOYEE 354, A-L-A-B-A-S-T-E-R, RETURNED IT TO ME.
...
PREPARE TO DIE.
#name player 
Oop, and your memories are gone.
...
Never mind, ADA1N. Responsible gun owner. I believe ya.
~done = true
->DONE

//lie: you had it on you
=cont2
#name player 
You say that you had it on you the whole time, but...
In another timeline, you tell a different story.
#name ADA1N 
I DO NOT COMPUTE.
#name player 
I have a memory wiper. I deleted the storage on your RAM and asked you the same questions.
You couldn't keep your lie straight afterword.
See here? You claim that you lent it to Detective G.
#name ADA1N 
THIS IS HIGHLY DISTURBING. I MUST DESTROY YOU IMMEDIATELY. 
#name player 
Before you do, could you tell me: did you lend out your blaster or not?
#name ADA1N 
I HAD WAYLAID THE BLASTER AND DID NOT PROPERLY IMPLEMENT SUPERVISION PROTOCOLS.
THE BLASTER WAS MISSING FOR A PERIOD OF TIME THREE RELATIVE DAYS AGO.
IT HAD BEEN FIRED EXACTLY ONCE WHEN I RECEIVED IT.
EMPLOYEE 354, A-L-A-B-A-S-T-E-R, RETURNED IT TO ME.
...
PREPARE TO DIE.
#name player 
Oop, and your memories are gone.
...
Never mind, ADA1N. Responsible gun owner. I believe ya.
~done = true 
->DONE

//lie: the weapon was not fired.

=cont3
#name player 
You say that you never fired the weapon, but I know it was fired in the past 3 relative days.
#name ADA1N 
I DO NOT COMPUTE. HOW CAN YOU KNOW THIS.
#name player 
I have a memory wiper. I deleted the storage on your RAM and asked you the same questions.
You couldn't keep your lie straight afterword.
See here? You claim that you fired it several times as part of a simulation
#name ADA1N 
THIS IS HIGHLY DISTURBING. I MUST DESTROY YOU IMMEDIATELY. 
#name player 
Before you do, could you tell me: did you fire the blaster or not?
#name ADA1N 
I HAD WAYLAID THE BLASTER AND DID NOT PROPERLY IMPLEMENT SUPERVISION PROTOCOLS.
THE BLASTER WAS MISSING FOR A PERIOD OF TIME THREE RELATIVE DAYS AGO.
IT HAD BEEN FIRED EXACTLY ONCE WHEN I RECEIVED IT.
EMPLOYEE 354, A-L-A-B-A-S-T-E-R, RETURNED IT TO ME.
...
PREPARE TO DIE.
#name player 
Oop, and your memories are gone.
...
Never mind, ADA1N. Responsible gun owner. I believe ya.
~done = true 
->DONE

//lie: the weapon was fired.
=cont4
#name player 
You say that you fired the weapon several times, but you're lying to me.
#name ADA1N 
I DO NOT COMPUTE. HOW CAN YOU KNOW THIS.
#name player 
I have a memory wiper. I deleted the storage on your RAM and asked you the same questions.
You couldn't keep your lie straight afterword.
See here? You claim that you never fired the weapon.
#name ADA1N 
THIS IS HIGHLY DISTURBING. I MUST DESTROY YOU IMMEDIATELY. 
#name player 
Before you do, could you tell me: did you fire the blaster or not?
#name ADA1N 
I HAD WAYLAID THE BLASTER AND DID NOT PROPERLY IMPLEMENT SUPERVISION PROTOCOLS.
THE BLASTER WAS MISSING FOR A PERIOD OF TIME THREE RELATIVE DAYS AGO.
IT HAD BEEN FIRED EXACTLY ONCE WHEN I RECEIVED IT.
EMPLOYEE 354, A-L-A-B-A-S-T-E-R, RETURNED IT TO ME.
...
PREPARE TO DIE.
#name player 
Oop, and your memories are gone.
...
Never mind, ADA1N. Responsible gun owner. I believe ya.
~done = true 
->DONE

==DONE== 
{done == true: -> nop}
=Default
#name player 
Well, that about wraps up the questions I have for you, ADA1N.
#name ADA1N 
EXCELLENT. I WILL NOW CONTINUE CALCULATING PLANS FOR GALACTIC DOMANATION.
#name player 
Do you mind if I hang around a bit and think about what you told me? 
#name ADA1N 
I MIND VERY MUCH. BUT YOU WILL BE A USEFUL PAWN IN MY SCHEMES. 
THEREFORE, I WILL NOT SHOOT YOU IF YOU WISH TO STAY. 
#name player 
Well, that's comforting.
->END

=nop
#name player 
Well, that about wraps up the questions I have for you, ADA1N. You've been quite helpful.
#name ADA1N 
EXCELLENT. I AM PLEASED WITH HOW SHORT AND LACKING IN CONTENT YOUR INVESTIGATIONS ARE, DETECTIVE C. 
#name player 
Well, I can get a lot of information just looking at, uh, your body language.
It's a Terran thing.
#name ADA1N 
HAR HAR.
AS IF YOU HAD THE COMPUTING POWER.
#name player 
All right, fun talk. 
#found stage1Info2
->END

