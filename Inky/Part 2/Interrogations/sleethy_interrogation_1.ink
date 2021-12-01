#index 15
#name player 
Sleethy? May I speak to you a second?
#name Sleethy 
Ugh, fine, if you mussst.
#name player 
You are working a cold case, yes?
#name Sleethy
-yawn- Yeah, what of it?
#name player 
I have a few questions to ask you.
Were you in the evidence room three relative days ago?
#name Sleethy
Hmm, yeah, I wasss.
It was a crazy day, ton of work to get done, y'know?
I wasss in and out, I checked out ssso much evidence for my case.
#name player
Excellent! Can you tell me anything you remember?
Like who fired the blaster?
#name Sleethy
Blasster? What blasst-?
...
Oh, right. The blasster.
I didn't sssseee a blassster. 
But I wasss totally in the evidenccce room, doing my work. Yesss.
#name player 
(That's the least convincing statement I've heard all day.)
(The criminal wouldn't admit to being in the evidence room. I don't think Sleethy is telling the truth.)

->BEGINNING
==BEGINNING==
VAR const1 = false //single shot 
VAR const2 = false //multiple shots 
VAR const3 = false //too busy to count
VAR done = false

#name player 
(Let's see if we can tease out the truth from Sleethy.)

+ What evidence were you there to pick up from the evidence room? 
    -> Tree1
+ How is your case progress coming along?
    -> Tree2
+Did anything unusual happen while you were in the evidence room? 
    -> Tree3


//what evidence
==Tree1==
=Root

#name Sleethy
Oh, it was, uh, a picture of a ssspace rock.
Nerguzzusss, told me to get it.
#name player
Nerguzzus?
#name Sleethy 
Yeah, they're like my partner, or sssomething.
#name player
And a  picture of a space rock?
That's your evidence?
#name Sleethy
Yeah! Jussst, you know, a photo.
#name player
That's it?
Nothing special about it?
#name Sleethy
Well, it's sssupposssed to be a forgery or sssomething.
Sssome no-good perp is duplicating non-fungiblesss and ssselling them on the black market.
-yawn- That's what Nerguzusss told me, anyway.
#name player
Oh, I see. Non-fungible tokens.
It all makes sense now.
Did you actually complete your delivery for Nerguzzus?
#index 0
#name Sleethy 
Of course, dude. 
What do I look like, ssssome sssort of ssslacker?
/*notes 
Sleethy was supposed to pick up a photo but didn't 
*/

+How is your case progress coming along? 
    ->branch1
+Did anything unusual happen while you were in the evidnence room? 
    -> branch2

    //case progress -> anything unusual
    =branch1
    #name Sleethy
    Yeah, perssson, cassse is coming well. 
    Nerguzzusss hacked into the perp'sss computer.
    Pretty sssure we have enough evidenccce to issssue a ssspaccce warrant sssoon.
    #index 1
    #name player 
    Wow, that's good to hear.
    /*notes: 
    Sleethy's case is coming along Well
    */

        ++Did anything unusual happen while you were in the evidence room?
        #name Sleethy
        Tsss, I can't remember anything essspecially interesssting. 
        #name player 
        So you don't remember seeing the blaster damage on the wall?
        #name Sleethy
        I didn't ssseee a blassster being fired in the evidenccce room.
        #name player
        But did you see the damage to the wall?
        #name Sleethy
        No, uh, I wasss ssso abssorbed in my work that I forgot to look at the wall.
        #index 2
        #name player
        (He's totally lying, but I don't want to make a scene by dragging him to the evidence room.)
        /*notes: 
        sleethy claims he didn't see the blaster damage on the wall*/
        ~const3 = true
        ->DONE

    //anything unusual happen -> how is case progress coming?
    =branch2
    #name Sleethy
    Tsss, I can't remember anything essspecially interesssting. 
    #name player 
    So you don't remember seeing the blaster damage on the wall?
    #name Sleethy
    I didn't ssseee a blassster being fired in the evidenccce room.
    #name player
    But did you see the damage to the wall?
    #name Sleethy
    No, uh, I wasss ssso abssorbed in my work that I forgot to look at the wall.
    #index 3
    #name player
    (He's totally lying, but I don't want to make a scene by dragging him to the evidence room.)
    ~const3 = true
    /*notes: 
    sleethy claims he didn't see the blaster damage on the wall*/

    ++How is your case progress coming along?

        #name Sleethy
        Yeah, perssson, cassse is coming well. 
        Nerguzzusss hacked into the perp'sss computer.
        Pretty sssure we have enough evidenccce to issssue a ssspaccce warrant sssoon.
        #index 4
        #name player 
        Wow, that's good to hear.
        /*notes: 
        Sleethy's case is coming along Well
        */

        ->DONE

//How is case progress coming?
==Tree2==
=Root
#name Sleethy
It'sss good, we're getting clossse to catching the perp.
#name player
That's good to hear. 
Hope you have all the evidence you need, because the evidence room will be closed until further notice.
#name Sleethy
Closssed? We have a lot of evidencce in there that needssss to be checked out! 
#name player
I thought you checked a whole lot of evidence out already?
#name Sleethy
Tsss. Yesss, but there isss even more I need to get.
If you'll excussse me, I musst-
#name player 
Hold on, I'm not finished questioning you.
This'll only take a minute or two.
#index 5
#name Sleethy
If you insissst.
/*notes:
sleethy still have evidence in the evidence room to be checked out 
*/

+What evidence were you there to pick up?
-> branch1
+Did anything unusal happen while you were in the evidence room?
-> branch2

    //what evidence -> anything unusual
    =branch1
    #name Sleethy
    Oh! It wassss a forged image file.
    Of a sssspace rock, I believe.
    #name player 
    What's so special about an image of a space rock?
    #name Sleethy
    It'ssss a non-fungible token.
    Our perp is a thief who is a little bit too happy copying tokensss to their own devicccce.
    #name player 
    Ah, I see. And you picked up this evidence as part of your work three days ago?
    #index 6
    #name Sleethy
    Yesss. Nerguzzusss assssked me to.

    /*notes:
    sleeethy pick up a photo of a space rock as evidence
    */

        ++Did anything unusual happen while you were in the evidence room?
        #name Sleethy
        Tsss, I can't remember anything essspecially interesssting. 
        #name player 
        So you don't remember seeing the blaster damage on the wall?
        #name Sleethy
        I didn't ssseee a blassster being fired in the evidenccce room.
        #name player
        But did you see the damage to the wall?
        #name Sleethy
        Uh, yesss, I did.
        Of courssse, that'sss why the room'sss closssed.
        There wasss, uh, a sssingle shot on the wall?
        #index 7
        #name player
        (He's totally lying, but I don't want to make a scene by dragging him to the evidence room.)
        /*notes: 
        sleethy claims he did saw a single shot on the wall*/
        ~const1 = true
        ->DONE

    =branch2
    #name Sleethy
    Tsss, I can't remember anything essspecially interesssting. 
    #name player 
    So you don't remember seeing the blaster damage on the wall?
    #name Sleethy
    I didn't ssseee a blassster being fired in the evidenccce room.
    #name player
    But did you see the damage to the wall?
    #name Sleethy
    Uh, yesss, I did.
    Of courssse, that'sss why the room'sss closssed.
    There were, uh, three shotsss on the wall?
    #index 8
    #name player
    (He's totally lying, but I don't want to make a scene by dragging him to the evidence room.)
    /*notes: 
    sleethy claims he did saw mulitple shots on the wall*/
    ~const2 = true

        ++What evidence were you there to pick up from the evidence room?
        #name Sleethy
        Oh! It wassss a forged image file.
        Of a sssspace rock, I believe.
        #name player 
        What's so special about an image of a space rock?
        #name Sleethy
        It'ssss a non-fungible token.
        Our perp is a thief who is a little bit too happy copying tokensss to their own devicccce.
        #name player 
        Ah, I see. And you picked up this evidence as part of your work three days ago?
        #index 9
        #name Sleethy
        Yesss. Nerguzzusss assssked me to.

        /*notes:
        sleeethy pick up a photo of a space rock as evidence
        */
        ->DONE

//did anything unusual happen in the evidence room?
==Tree3==
=Root
#name Sleethy
Tsss, no, not that I can remember.
#name player 
So you don't know anything about the blaster craters on the wall?
#name Sleethy
I mussst've been ssso absssorbed in my work that I didn't ssssee it.
#name player 
I see. You must have been real busy.
#index 10
#name Sleethy
Yesss, extremely ssso.
/*notes:
sleethy claims she was busy*/
~const3 = true

+What evidence were you there to pick up from the evidence room?
-> branch1 
+How is your case coming along?
-> branch2

    //what evidence -> how
    =branch1
    #name Sleethy
    Oh! It wassss a forged image file.
    Of a sssspace rock, I believe.
    #name player 
    What's so special about an image of a space rock?
    #name Sleethy
    It'ssss a non-fungible token.
    Our perp is a thief who is a little bit too happy copying tokensss to their own devicccce.
    #name player 
    Ah, I see. And you picked up this evidence as part of your work three days ago?
    #index 11
    #name Sleethy
    Yesss. Nerguzzusss assssked me to.

    /*notes:
    sleeethy pick up a photo of a space rock as evidence
    */
        ++How is your case progress coming along?
         #name Sleethy
        Yeah, perssson, cassse is coming well. 
        Nerguzzusss hacked into the perp'sss computer.
        Pretty sssure we have enough evidenccce to issssue a ssspaccce warrant sssoon.
        #index 12
        #name player 
        Wow, that's good to hear.
        /*notes: 
        Sleethy's case is coming along Well
        */
        ->DONE

    //how is progress -> what evidence
    =branch2
    #name Sleethy
    Look, I'll level with you.
    Casssse is coming along fine, but I feel like it could be going better. 
    #name player 
    How so?
    #name Sleethy
    I've been having sss-elf doubts the passsst few relative weeksss.
    What if I'm not good enough?
    Do my peerssss respect me?
    THe cassse work isss complicated and daunting, to say the leassst.
    #name player 
    Well, if it's any consolation, you're doing very well answering these questions.
    #index 13
    #name Sleethy
    Thankssss.
        ++What evidence were you supposed to pick up from the evidence room?
        #name Sleethy
        Thissss is the thing.
        I don't quite know.
        #name player 
        You don't know?
        #name Sleethy
        Right. Nerguzzussss calls it a "non-fungible token". 
        Apprarently computer filessss are property? And they're eassssy to forge?
        Our perp is an NFT theif, but I don't know what issss the NFT.
        #name player 
        They don't teach that properly at the academy. 
        Why don't you take an hour or two, look it up on the Universe-Wide-Web?
        I'll take a break, be back in a relative hour.
        #name Sleethy
        Wow, thanksss.
        #index 14
        #name player 
        (It would be really funny if I let him take the class, then neuralyzed him.)
        (No, C. That's abuse of power. Don't think such thoughts.)
        /*notes:
         sleethy is inept as his job
         */

        ->DONE

==CONTRADICTION==

=Default
{const1 == true && Tree2.branch2} ->Cont1 
{const2 == true && Tree2.branch1} ->Cont1 

{const1 == true && Tree1.branch1} ->Cont2
{const2 == true && Tree1.branch1} ->Cont2
{const1 == true && Tree1.branch2} ->Cont2
{const2 == true && Tree1.branch2} ->Cont2

{const3 == true && Tree2.branch1} ->Cont2 
{const3 == true && Tree2.branch2} ->Cont2

#name player 
Don't lie to me, Sleethy.
#name Sleethy
I didn't. I ssshould know, I am a very good liar.
#name player 
Oh, sorry, I thought you said something else.
YOur esses and zees are a little hard to distinguish. 
#name Sleethy
Sssssorry. Not much I can do about my acccccent. 
#index 15
->END

=Cont1
~done = true
#name player 
Don't lie to me, Sleethy.
#name Sleethy
I didn't. I ssshould know, I am a very good liar.
#name player 
Not good enough, I'm afraid.
I have a memory wiping device. 
WIthout your memories to rely on, you miscounted your shots.
#name Sleethy
I don't remember sssaying that!
#name player 
Exactly. 
Tell me the truth.
#name Sleethy
Fine. 
I never went into the evidence room, becaussse I'm a lazzzy failure. 
Nerguzzussss asssked me to pick up the photo for them.
I made it asss far assss the door. 
Then, I ssssuddenly felt nautious, ssso I turned around and left ssssans photo.
Nerguzzusss hassss been waiting on me to sssubmit it but I haven't got it sssssince.
#name player 
Thank you. Was that so hard?
#name Sleethy
Yessss. 
It'ssss embarassssing! 
#name player 
Oh, everyone gets embarassed from time to time. 
Unless your memory is good, you'll forget about it, eventually.
#index 15
#found stage2InfoSleethy
->END


=Cont2
~done = true
#name player 
Don't lie to me, Sleethy.
#name Sleethy
I didn't. I ssshould know, I am a very good liar.
#name player 
Not good enough, I'm afraid.
I have a memory wiping device. 
WIthout your memories to rely on, you couldn't keep your facts straight.
#name Sleethy
I don't remember sssaying that!
#name player 
Exactly. 
Tell me the truth.
#name Sleethy
Fine. 
I never went into the evidence room, becaussse I'm a lazzzy failure. 
Nerguzzussss asssked me to pick up the photo for them.
I made it asss far assss the door. 
Then, I ssssuddenly felt nautious, ssso I turned around and left ssssans photo.
Nerguzzusss hassss been waiting on me to sssubmit it but I haven't got it sssssince.
#name player 
Thank you. Was that so hard?
#name Sleethy
Yessss. 
It'ssss embarassssing! 
#name player 
Oh, everyone gets embarassed from time to time. 
Unless your memory is good, you'll forget about it, eventually.
#found stage2InfoSleethy
->DONE


==DONE==
=Default
{done == true} -> done1
#name player 
Do you mind if I stick around and think about what you told me, Sleethy?
#name Sleethy
Of courssse not. I am very busssy though so pleasssse think in silence. 
#index 15
I have ssssensssitive earsssss.
->END

=done1
#name player 
Never mind, Sleethy. I have all the info I need. 
#name Sleethy
How? I didn't assssk any quessstions. 
#name player 
I'm psychic and I divined the answer. 
#name Sleethy
Ssssssure.
#index 15
#found stage2InfoSleethy
->END

=done2
#index 15
->END
