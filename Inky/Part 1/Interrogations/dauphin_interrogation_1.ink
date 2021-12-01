#index 15
#name player
Dauphin! Good to see you, my fellow mammal! 
Listen, there's been a crime committed. A theft.
I need to see data of the evidence room for three relative days ago. Security clearance Theta-2. 
I need everything, footage, pressure, temperature--hit me with it all.
#name Dauphin
O-O-Ok. Good to see you too, Detective C. 
I-I a-absolutely can do that.
#name player
Thanks. So you can pull the footage for me?
#name Dauphin
Y-yes, I can bring that up, just a second...here it is!
#name player
...
What's this static?
#name Dauphin
W-well, it seems we have seismic readings as usual - looks to me like 3 creatures were in the room at that time.
They all entered one by one.
Then, two of them left at once.
O-oh, visual footage is missing. That's odd.
#name player
What? How on Terra-2 did that happen? 
We have like 25 zetabytes of storage on this thing!
It couldn't have overflowed, right?
#name Dauphin
Nope. 
Somebody must have manually deleted the footage. I-it wasn't me, though!
#name player
Hmm. You mind if I ask you a few questions about the deleted footage? 
-> BEGINNING

=== BEGINNING ===
VAR cont1 = false //only need a password
VAR cont2 = false //complicated 25 fa process 
VAR cont3 = false //never left door unlcoked
VAR cont4 = false //left door unlcoked
#name player
(I suspect Dauphin may have deleted the footage, for some reason. Let's see if we can find out what he's hiding...)

//contradictions in tree3 branch 2+++, tree 1 branch 1
+ Who has access to the footage? 
     -> Tree1.Root
+ When could the footage have been possible deleted? 
     -> Tree2.Root
+ How often do you leave the room unlocked? 
     -> Tree3.Root


=== Tree1 ===
//Who has access?
= Root
#name Dauphin
I have the password, Detective G has it, the boss has it...
Nobody else has it, I don't think...
I haven't given it to anybody else.
#name player
And what is the password?
#name Dauphin
Y-you! You really think I'm that dumb?
#name player
Just had to check.
#name Dauphin
L-l-look, the creatures I listed are the only creatures who are supposed to have the password! 
B-b-but! I let people in here all the time! A-a-and I don't type very fast! 
They haven't made these keyboards flipper friendly! Maybe somebody gleamed the passcode!

~cont1 = true
#index 0
#name player
All right, I'll keep in mind the possibility of a creature gleaning the pass.

+ When could the footage have been possible deleted? 
     -> branch1
+ How often do you leave the room unlocked? 
     -> branch2

//When could it have happened -> Do you leave door unocked?
= branch1   
    #name Dauphin
    W-w-w-well, um... I don't know. 
    O-o-r it could have been the password-spotter!
    #name player
    Just to be clear, anybody with the password has full access to the footage?
    #index 1
    #name Dauphin
    Uhm, yes. Y-y-yes, that's just it. 
    Some nefarious creature could have entered the password while I was away!
    If they had the password, then they had full access to all the footage!
    ~ cont1 = true
    //+ {Tree3.branch1} What about the 25 factor authentication process? -> Cont1
    
    
    +++How often do you leave the room unlocked?
        #name Dauphin
        W-w-well when I'm in here, the door is unlocked.
        B-but if I have to leave unattended for some reason, protocol says to lock the door.
        Y-y-you know me, I always follow protocol.
        #name player
        Your record is indeed quite clean. 
        #name Dauphin
        Y-yes! The door was always locked when I was away!
        E-except this one time, when I left it open y-yesterday on a bathroom break.
        #name player 
        //#REMEMBER2FIX Need clarification from Nadav on next line
        You broke protocol and left the door open?
        #name Dauphin
        U-uhm, uhh, yes.
        I-i-it was only a few minutes!
        B-b-but maybe the password spotter entered the password then!
        #index 2
        #name player
        Sure, that's plausible.
        ~cont4 = true //left door open for spotter
        #index 15
             ->DONE
    
//Do you leave door unlocked -> when could it have happened
= branch2
    #name Dauphin
    W-w-well, when I'm in here, the door is unlocked.
    B-but if I have to leave unattended for some reason, protocol says to lock the door.
    Y-y-you know me, I always follow protocol.
    #name player
    Your file is indeed quite clean. 
    Did you leave the room unsupervised for any reason?
    #name Dauphin
    Y-yes. I used the bathroom exactly fives times,
    met with friends twice,
    slept three times,
    and has 1 prolonged gaming session.
    #name player
    "Prolonged gaming session?"
    #name Dauphin 
    Don't ask.
    #name player
    The room was locked each time, though?
    #index 3
    #name Dauphin 
    Y-y-yes. I did not leave the door open.
    ~cont3 = true //never left door open
    +++When could the footage have possibly been deleted?
        #name Dauphin
        W-w-w-well, uhm, I don't know. 
        #name player
        Any ideas? Since the door is locked when you're away and only a few choice people know the password.
        #index 4
        #name Dauphin
        T-t-this is why you're the detective, not me.
        #name player
        #index 15
        ->DONE


== Tree2 ==
//When couuld it have happened?
= Root 
#name Dauphin
I-I-don't know! 
I'm in here a lot, so I couldn't say.
#name player
And it couldn't have happened on your watch?
#name Dauphin 
W-well, I know that, uhm, uh, I didn't delete the footage, 
so it must have happened while I was out.
#index 5
#name player
I see. It happened while you were away. 
I'll note that down.

+ Who has access to the footage? 
     -> branch1
+ How often do you leave the room unlocked? 
     -> branch2

//who -> how
=branch1
    #name Dauphin
    Well, you would need the password.
    The creatures that have the password are, Uhm, j-just me.
    And Detective G.
    And the boss.
    ...
    Nobody else, nope.
    #name player
    You have no other ideas of who it could be? 
    #name Dauphin 
    Other than us, uhm, no. Unless another creature learned the password.
    #index 6
    #name player
    This really isn't a lot to go on...
    
    +++How often do you leave the room unlocked?
        #name Dauphin
        W-w-well when I'm in here, the door is unlocked.
        B-but if I have to leave unattended for some reason, protocol says to lock the door.
        Y-y-you know me, I always follow protocol.
        #name player
        Right, right. 
        #name Dauphin
        I don't think I ever left the door unlocked...
        #name player 
        You're sure?
        #name Dauphin
        U-um, uhh, yes. 
        #index 7
        #name player
        Understood.
        ~cont3 = true
        #index 15
        ->DONE

//how -> who
=branch2
    #name Dauphin
    W-w-well when I'm in here, the door is unlocked.
    B-but if I have to leave unattended for some reason, protocol says to lock the door.
    Y-y-you know me, I always follow protocol.
    #name player
    Yes, yes.
    So you claim that because you kept the door locked, the files could not possibly have been deleted on your shift?
    #index 8
    #name Dauphin
    Y-y-y-es.
    ~cont3 = true
    
    +++Who has access to the footage?
        #name Dauphin 
        U-uhm, myself, Detective G., and, uh, the boss. All of us have clearance.
        #name player
        And who accesses the footage most often?
        #name Dauphin 
        W-w-well, the boss has, boss things to do, and, uh,
        Detective G. doesn't really do much of anything, so, uh,
        it's mostly me.
        #index 9
        #name player
        Ok, thank you, duly noted. 
        Only you usually access these files.
        #index 15
        ->DONE



=== Tree3 === 
= Root 
#name Dauphin
L-leave the door unlocked? I-I wouldn't do that. What kind of guard would do that?
#name player
You. You are the smartest scatterbrain I know.
#name Dauphin 
U-uh... I, uh, never left the door unlocked. 
It never happened once during my shift.
#name player
Did you leave the room during your shift?
#name Dauphin.
I did, uh, a few times, but, uh, each time the door was locked.
#name player
Then, it could not have been negligence while you were on duty.
#name Dauphin
Y-y-yes, excellent point. My record is good, I, uh, never violate protocol!
#index 10
#name player
I have a few more questions for you before I go bothering the others.
~cont3 = true

+ When could the footage have been possible deleted? 
     -> branch1
+ Who has access to the footage? 
     -> branch2

//when -> who
=branch1
    #name Dauphin 
    W-well, uhm, I don't know.
    #name player
    I see. 
    It couldn't have been on your shift while you were away.
    #name Dauphin 
    Y-yes, that's right.
    #name player
    And you didn't delete the files or witness anybody else delete them.
    #name Dauphin 
    T-that's correct.
    #name player
    Then it's reasonable to conclude that the files weren't delete during your shift.
    #index 11
    #name Dauphin
    Y-y-y-es, b-b-brilliant observation, uh,
    I concur totally. 
    Not during my shift, yes.
    +++Who has access to the files?
        #name Dauphin 
        Oh, uhm, me, the other guard, Nrguzzus, uhm, the boss, and, uh, Detective G.
        Well all know the passcode.
        #name player
        And who of these actually manages the files?
        #name Dauphin
        Oh, uhm, just me.
        #name player
        Do you think the Boss or Detective G deleted the files?
        #name Dauphin 
        W-w-w-w-well! I say, uhm, yes...
        L-l-l-look, I don't want to throw them under the shuttle bus, but there's a complicated 25-factor authentication process beyond the password.
        To prevent password spotters, you know?
        Only, uhm, the Boss can \*really* navigate it. 
        So, uhm, it could have been them.
        ~ cont2 = true
        #index 12
        #name player
        Understood.
        #index 15
        ->DONE
        //+ {Tree1.branch1} Don't get smart with me, stop blaming Nerguzzus. ->Cont2

//who -> when
=branch2
    #name Dauphin
    Well, you would need the password.
    The creatures that have the password are, um, j-just me. 
    And Detective G.
    And the boss.
    ...
    Nobody else, nope.
    #name player
    Gotcha... no other ideas? 
    #name Dauphin 
    Well, uhm, I do let people in here a lot. Maybe of them gleaned the password?
    #name player
    Perhaps. Do you remember who visited here over the past 3 days?
    #name Dauphin 
    Uhm, uhm, ah...no. 
    My memory is good, but not that good.
    #index 13
    #name player
    That's all right, we all forget things from time to time. (Heh, heh.)
    Let me notate that, potential password gleamer.
    ~cont2 = true
    +++When could the footage have possibly been deleted?
        #name Dauphin
        W-w-wow, uhm, I am stumped. 
        It could not have been during my shift since even when I was away the door was locked!
        #name player
        OK. That makes sense, the footage must have been deleted at some other time.
        #name Dauphin
        Y-yup!
        #name player
        OK. You sure you can't think of a time when a password gleamer may have entered the password?
        #index 14
        #name Dauphin
        N-no, n-not off the top of my blowhole.
        #index 15
        ->DONE
        
=== DONE ===
#name Dauphin 
W-w-w-well I appreciate your concern, b-b-b-but I must get back to work.
#name player
Of course. I might hang around just a bit. Don't mind me.
#index 15
-> END
//->Beginning


//make it more rewarding when done to talk after them
=== DONE2 ====
#name Dauphin 
Aren't you going to ask any questions, D-detective?
#name player
No, I've got all the information I need.
#name Dauphin 
O-o-ok. I'm good to resume work, then?
#name player
Knock yourself out, buddy.
#index 15
->END



===CONTRADICTION===
= Default
    {cont1 == true && Tree3.branch2 : -> Cont1}
    {cont2 == true && Tree1.branch1 : -> Cont2}
    {cont3 == true && Tree1.branch1 : -> Cont3}
    {cont4 == true && Tree1.branch2 : -> Cont4}
    {cont4 == true && Tree2.branch1 : -> Cont4}
    {cont4 == true && Tree2.branch2 : -> Cont4}
    {cont4 == true && Tree3 : -> Cont4}
     #name player
     (I have'nt encountered any inconsistencies in Dauphin's story yet.)
     (I should keep asking him questions. Maybe even try the memory gun.)
     #return ToSave
     #index 15
     -> DONE
//what about 25FA
= Cont1 
    #name player
    What about the 25-factor authentication process?
    #name Dauphin
    O-o-oh, t-t-that. 
    D-didn't realize you knew. 
    Just a slip of the clicker.
    #name player
    I have you on camera saying the opposite. 
    There was no password gleamer. 
    You broke protocol and deleted the files, and I want you to tell me why.
    #name Dauphin 
    P-p-please don't tell anybody...
    It was a favor for a friend. 
    Shudderz got, uhm, really high a few days ago, and, uhm, 
    he did some unspeakable things in the file room on camera.
    S-so, uhm, he told me he'd, uhm, invite me to one of his parties if I, 
    uhm, deleted the footage. So I did.
    #name player
#index 14
    There, was that so hard?
    I'll need to go have a talk with Shudderz. 
    (Flashy Thing animation)
    Never mind, I have everything I need.
    You have a nice day.
    #found stage1InfoDauphin
    #index 15
    -> DONE2

//You're really throwing your companion under the bus
= Cont2
    #name player
    Don't get smart with me.
    #name Dauphin 
    W-w-what? I would n-n-n-never...
    #name player
    I have footage of you saying the exact opposite. 
    #name Dauphin 
    I-I-I don't remember saying that...!
    #name player
    I have a device that deletes memories. Interrogation use only. 
    It's integrated into fish buddy.
    #name Dauphin 
    W-w-w-what? W-w-wow, that's really cool!
    #name player
    Yup.
    So tell me why you're contradicting yourself.
    #name Dauphin 
    O-oh, uhm, y-y-you're right, I deleted the footage. 
    Uhm, S-shudderz asked me to. 
    He had an embarassing moment in the file room a few relative days ago...
    #name player
    And you, the biggest goody two-fin in the office, broke protocol and deleted the files for him? 
    #name Dauphin 
    W-w-w-well, he told me he'd invite me to one of his parties if I did...
    #index 14
    #name player
    I'll have to have a talk with him later. 
    #found stage1InfoDauphin
    #index 15
    ->END
    
=Cont3
#name player 
Please don't lie to me, Dauphin.
#name Dauphin
W-w-w-w-w-w-what!?!?
I-I-I would never!
#name player 
I have a memory wiper. I have you on record as you never leaving the room unlocked.
Please, just tell me the truth.
#name Dauphin 
O-o-oh, all right.
#index 15
-> TRUTH

=Cont4
#name player 
Please don't lie to me, Dauphin.
#name Dauphin
W-w-w-w-w-w-what!?!?
I-I-I would never!
#name player 
I have a memory wiper. I have you on record as you leaving the room.
Please, just tell me the truth.
#name Dauphin 
O-o-oh, all right.
#index 15
->TRUTH

==TRUTH==
#name Dauphin 
I-I, uhm, I deleted the footage. 
Uhm, S-shudderz asked me to. 
He had an embarassing moment in the file room a few relative days ago...
#name player
And you, the biggest goody two-fin in the office, broke protocol and deleted the files for him? 
#name Dauphin 
W-w-w-well, he told me he'd invite me to one of his parties if I did...
#index 14
#name player
I'll have to have a talk with him later. 
    #found stage1InfoDauphin
    #index 15
->END

