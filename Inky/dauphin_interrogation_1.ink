#name player
Dauphin! Good to see you, my fellow mammal! 
Listen, there's been a crime committed. A theft.
Security clearance theta-2. I need to see data of the evidence room for 3 relative days ago. 
I'd like everything, footage, pressure, temperature, hit me with it all.
Oh, and for the books, name, occupation, and home planet.
#name Dauphin
O..O...Ok. Good to see you too, Detective C. 
My name is Dauphin, I work security and surveillance,
and I am from Planet Narret of the Silky Smooth Galaxy. 
#name player
Thanks. Can you get the footage for me?
#name Dauphin
Y-yes, I can bring that up, just a second...here it is!
#name player
...
What's this static?
#name Dauphin
W-well, it seems we have seismic readings as usual - looks to me like 3 creatures were in the room at that time.
They all left one by one.
Visual footage is missing. That's odd.
#name player
What? How on Terra-2 did that happen? 
We have like 25 zetabytes of storage on this thing, right? 
Couldn't have overflowed?
#name Dauphin
Nope. 
Somebody must have manually deleted the footage. I-it wasn't me, though! I don't know.
#name player
Hmm. You mind if I ask you a few questions about the deleted footage? 
-> BEGINNING

=== BEGINNING ===
VAR cont1 = false
VAR cont2 = false
#name player
(I can't conclude for certain Dauphin is the culprit.)
(I suspect he may have deleted the footage, though. Let's see if we can find out what he's hiding...)

//contradictions in tree3 branch 2+++, tree 1 branch 1
+ Who has access to the footage? -> Tree1.Root
+ When could the footage have been possible deleted? -> Tree2.Root
+ How often do you leave the room unlocked? -> Tree3.Root
*    ->DONE

=== Tree1 ===
//Who has access?
= Root
#name Dauphin
I have the password, Detective G has it, the boss has it...
Oh! Nerguzzus has it because they are put on security sometimes too!
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
#name player
All right, I'll keep in mind the possibility of a creature gleaning the pass.

+ When could the footage have been possible deleted? -> branch1
+ How often do you leave the room unlocked? -> branch2

//When could it have happened -> Do you leave door unocked?
= branch1   
    #name Dauphin
    W-w-w-well, uhm, I don't know. 
    It could have been N-nerguzzus since they work independently of me.
    O-o-r it could have been the password-spotter!
    #name player
    Just to be clear, anybody with the password has full access to the footage?
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
        Your file is indeed quite clean. 
        #name Dauphin
        Y-yes! The door was always locked when I was away!
        #name player 
        So for the password spotter to gain access, they would have enter the password with you watching?
        #name Dauphin
        U-uhm, uhh, yes. So maybe, uhm, Nerguzus left the door unattended. 
        Sometimes they can forget things, right?
        #name player
        Sure, that's plausible.
        ->DONE
    
//Do you leave door unlocked -> when could it have happened
= branch2
    #name Dauphin
    W-w-well when I'm in here, the door is unlocked.
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
    16 hours of Landnautica.
    #name player
    The room was locked each time, though?
    #name Dauphin 
    Y-y-yes. Nerguzzus might have left the room unlocked on their shift.
    I did not leave the door open.
    
    +++When could the footage have possibly been deleted?
        #name Dauphin
        W-w-w-well, uhm, I don't know. 
        I-it must have been during Nerguzzus' shift since it couldn't have been during mine!
        You should ask Nerguzzus!
        #name player
        All in due time.
        Does Nerguzzus ask you before they delete footage?
        #name Dauphin
        U-u-usually, yes. 
        But they didn't this time!
        #name player
        (I think Dauphin deleted the footage, and won't tell me why.
        I'd better be really thorough here before I seek out Nerguzzus.)
        ->DONE


== Tree2 ==
//When couuld it have happened?
= Root 
#name Dauphin
I-I-don't know! 
I'm in here a lot, so I couldn't say.
M-m-maybe it happened during Nerguzzus' shift.
#name player
And it couldn't have happened on your watch?
#name Dauphin 
W-well, I know that, uhm, uh, I didn't delete the footage, 
so it must have happened while I was out.
#name player
I see. It happened while you were away. 
I'll note that down.

+ Who has access to the footage? -> branch1
+ How often do you leave the room unlocked? -> branch2

//who -> how
=branch1
    #name Dauphin
    Well, you would need the password.
    The creatures that have the password are, Uhm, j-just me and Nerguzzus. 
    And Detective G.
    And the boss.
    ...
    Nobody else, nope.
    #name player
    You have no other ideas of who it could be? 
    #name Dauphin 
    Other than us, uhm, no. Unless another creature learned the password.
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
        U-uhm, uhh, yes. So maybe, uhm, Nerguzus left the door unattended. 
        Sometimes they can forget things, right?
        #name player
        I could imagine that.
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
    #name Dauphin
    Y-y-y-es. I-i-it must have been deleted on Nerguzzus' shift.
    
    +++Who has access to the footage?
        #name Dauphin 
        U-uhm, myself, Nerguzzus, Detective G., and, uh, the boss. All of us have clearance.
        #name player
        And who accesses the footage most often?
        #name Dauphin 
        W-w-well, the boss has, boss things to do, and, uh,
        Detective G. doesn't really do much of anything, so, uh,
        it's mostly me and Nerguzzus.
        #name player
        Ok, thank you, duly noted. 
        Only you  and Nerguzzus access these files.
        ->DONE



=== Tree3 === 
= Root 
#name Dauphin
L-leave the door unlocked? I-I wouldn't do that. What kind of guard would do that?
#name player
You. You are the smartest scatterbrain I know.
#name Dauphin 
U-uh.....I, uh, never left the door unlocked. 
It never happened once during my shift.
#name player
Did you leave the room during your shift?
#name Dauphin.
I did, uh, a few times, but, uh, each time the door was locked.
#name player
Then, it could not have been negligence while you were on duty.
#name Dauphin
Y-y-yes, excellent point. My record is good, I, uh, never violate protocol!
#name player
I have a few more questions for you before I go bothering them.

+ When could the footage have been possible deleted? -> branch1
+ Who has access to the footage? -> branch2

//when -> who
=branch1
    #name Dauphin 
    W-well, uhm, I don't know.
    #name player
    I see. 
    I couldn't have been on your shift while you were away.
    #name Dauphin 
    Y-yes, that's right.
    #name player
    And you didn't delete the files or witness anybody else delete them.
    #name Dauphin 
    T-that's correct.
    #name player
    Then it's reasonable to conclude that the files weren't delete during your shift.
    #name Dauphin
    Y-y-y-es, b-b-brilliant observatoin, uh,
    I concur totally. 
    Not during my shift, yes.
    +++Who has access to the files?
        #name Dauphin 
        Oh, uhm, me, the other guard, Nrguzzus, uhm, the boss, and, uh, Detective G.
        Well all know the passcode.
        #name player
        And who of these actually manages the files.
        #name Dauphin
        Oh, uhm, just Nerguzzus.
        #name player
        Do you think Nerguzzus deleted the files?
        #name Dauphin 
        W-w-w-w-well! I say, uhm, yes...
        L-l-l-look, I don't want to throw them under the shuttlebus, but there's a complicated 25 factor authentication process beyond the password. 
        Only, uhm, Nerguzzus and myself can really navigate it. 
        So, uhm, it must have been them.
        ~ cont2 = true
        #name player
        Understood.
        ->DONE
        //+ {Tree1.branch1} Don't get smart with me, stop blaming Nerguzzus. ->Cont2

//who -> when
=branch2
    #name Dauphin
    Well, you would need the password.
    The creatures that have the password are, Uhm, j-just me and Nerguzzus. 
    And Detective G.
    And the boss.
    ...
    Nobody else, nope.
    #name player
    Gotcha...no other ideas? 
    #name Dauphin 
    Well, uhm, I do let people in here a lot. Maybe of them gleaned the password?
    #name player
    Perhaps. Do you remember who visited here over the past 3 days?
    #name Dauphin 
    Uhm, uhm, ah...no. 
    My memory is good, but not that good.
    #name player
    That's all right, we all forget things from time to time.
    Let me notate that, potential password gleamer.
    +++When could the footage have possibly been deleted?
        #name Dauphin
        W-w-wow, uhm, I am stumped. 
        It could not have been during my shift since even when I was away the door was locked!
        #name player
        OK. That makes sense, the footage must have been deleted at some other time.
        #name Dauphin
        P-p-p-precisely.
        #name player
        OK, good. Footage was deleted off-watch. 
        Thank you.
        ->DONE

=== DONE ===
#name Dauphin 
W-w-w-well I appreciate your concern, b-b-b-but I must get back to work.
#name player
Of course. I might hang around just a bit. Don't mind me.
-> END
//->Beginning


//make it more rewarding when done to talk after them
=== DONE2 ====
#name Dauphin 
Aren't you going to ask any questions, D-detective?
#name player
No, I've got all the information I need.
#name Dauphin 
O-o-ok. I'm good to resume work then?
#name player
Knock yourself out, buddy.
->END



=== CONTRADICTION ===
= Default
    {cont1 == true && Tree3.branch2 : -> Cont1}
    {cont2 == true && Tree1.branch1 : -> Cont2}
     #name player
     (I have'nt encountered any inconsistencies in Dauphin's story yet.)
     (I should keep asking him questions. Maybe even try the memory gun.)
     #return ToSave
     -> DONE
//what about 25FA
= Cont1 
    #name player
    What about the 25 factor authentication process?
    #name Dauphin
    O-o-oh, t-tt-that. 
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
    There, was that so hard?
    I'll need to go have a talk with Shudderz. 
    (flashy thing animation)
    Never mind, I have everything I need.
    You have a nice day.
    -> DONE2

//You're really throwing your companion under the bus
= Cont2
    #name player
    Don't get smart with me, stop blaming Nerguzzus.
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
    And you, the biggest good two-fin in the office, broke protocol and deleted the files for him? 
    #name Dauphin 
    W-w-w-well, he told me he'd invite me to one of his parties if I did...
    #name player
    I'll have to have a talk with him later. 
    (flashy thing animation)
    Never mind, I have everything I need.
    You have a nice day.
    ->END


