#name player
Hey, G. 
Wanted to ask you a few questions about the incident.
#name Detective G
Sure, sure, anything for my best friend in the whole precinct.
#name player
Great. Just please, no embellishments or exaggerations.
You have a tendency to blow things out of proportion.
#name Detective G
Please, I don't think I have \*ever* blown \*anything* out of proportion.
#name player 
(And there it is.)



->BEGINNING

==BEGINNING==

(Let's see what G has to say about the incident.)

VAR const1 = false //went there to check out evidence
VAR const2 = false //went there off an anonymous tip
VAR done = false

+ Was anybody else with you in the evidence room? -> Tree1
+ Why did you go to the evidence room? -> Tree2
+ I can't believe you got Neuralyzed. -> Tree3


//Was anybody else with you?
==Tree1==
=Root
#name Detective G
Naw, it was just me, alone.
Least I'm pretty sure.
#name player 
Just you? You don't remember anyone else?
#name Detective G 
Neeeeeeeope!
#name player 
So, then you don't remember anybody taking your Nueralyzer from you at all?
#name Detective G 
Not at all.
Not even my other head remembers.
#name player 
All right then. Not a lot to go on.
/*notes:
det. G was alone in the evidence room*/


+Why did you go to the evidence room? -> branch1
+I can't believe you got Neuralyzed. -> branch2

    //why did you go -> I can't believe you got
    =branch1
    #name Detective G
    Oh, well that's an easy one.
    I went because I had some evidnce to check out.
    #name player 
    And what evidence was that?
    #name Detective G 
    Oh, you know, some evidence.
    "I don't talk about my cases, I just solve 'em."
    That's the G motto, baby.
    #name player 
    You do know this is a serious situation, right?
    If you keep joking around we could all get fired, or worse.
    #name Detective G
    Hey, the Goat's gonna say what the Goat's gonna say.
    Can't muzzle the G-O-A-T!
    /*notes:
    Detective g went to the evidence room to check out evidence*/
    ~const1 = true
    
        ++I can't believe you got Neuralyzed.
        #name Detective G
        Hey, mum's still the word on that theory of yours.
        You haven't proven it, have you?
        #name player 
        No, but I'm fairly certain of it.
        /*notes:
        Det. G doesn't remember being neuralyzed
        */
        
        ->DONE
    
    //I can't believe you got neuralyzed -> why did you go
    =branch2

    #name Detective G
    Hey, mum's still the word on that theory of yours.
    You haven't proven it, have you?
    #name player 
    No, but I'm fairly certain of it.
    /*notes:
    Det. G doesn't remember being neuralyzed
    */
        
        ++Why did you go to the evidence room?
        #name Detective G
        Well, since I was Neuralyzed by your little theory, I guess my testimony doesn't matter.
        #name player 
        Well, any testimony is helpful, even if it's crappy goat testimony.
        #name Detective G 
        Goat testimony is goated, liked anything else goat-related.
        If it should so please you, 
        I was told to go to the evidence room.
        #name player 
        By whom?
        #name Detective G 
        I don't know. It was an anonymous e-mail, letter said it was signed by a fan.
        #name player 
        An e-mail? Did you try tracing it back to the account?
        #name Detectice G 
        Well, yes, I did. 
        Sadly, goatfan22@goaty.com is a spoofed address.
        #name player 
        (He clicked on an email from that address? Really?)
        /*notes:
        G was sent an email to go to the evidence rooom
        */
        ~const2 = true
    
        ->DONE

//why did you go to the evidence room?
==Tree2==
=Root
#name Detective G 
Oh, you know, checking out evidence, doing goat things.
#name player 
What are "goat things", in this context?
#name Detective G
You know, goat things.
#name player 
I don't know. Please enlighten me.
#name Detective G
Well, I had to check out some evidence for that day, all right?
That's all you'll get for your records.
#name player 
You know, it really behooves you to cooperate with this investigation right now.
#name Detective G 
Don't make hoof jokes around me.
/*notes:
G went to pick up some evidence*/
~const1 = true

+Was anybody else with you in the evidence room? -> branch1
+I can't believe you got Neuralyzed. -> branch2

    //was anybody with you -> I can't believe
    =branch1
    #name Detective G
    You know, now that you mention it, 
    I don't remember seeing anyone else in there!
    #name player 
    You're certain?
    #name Detective G 
    Of course I'm certain! 
    The GOAT's memory is perfect.
    At least, the memory of my other head is perfect.
    #name player 
    /*notes 
    G didn't see anyone in the evidence room
    */
    
        ++I can't believe you got Neuralyzed.
        #name Detective G
        Well, we still don't know for \*certain* that I was Neuralyzed.
        #name player 
        Your testimony proves it pretty conclusively.
        There's concrete evidence that other creatures were in the evidence room,
        and you just admitted to not seeing anyone there.
        #name Detective G 
        Oh, yeah. Funny how that works, I guess.
        ->DONE
    
    //I can't believe
    =branch2
    #name Detective G
    Hey, mum's still the word on that theory of yours.
    You haven't proven it, have you?
    #name player 
    No, but I'm fairly certain of it.
    /*notes:
    Det. G doesn't remember being neuralyzed
    */    
        ++Was anybody else with you in the evidence room?
        #name Detective G
        Well, since I was Neuralyzed by your little theory, I guess my testimony doesn't matter.
        #name player 
        Well, any testimony is helpful, even if it's crappy goat testimony.
        #name Detective G 
        Goat testimony is goated, liked anything else goat-related.
        If it should so please you, 
        I did not see anyone else in the evidence room at that time.
        #name player 
        See? This is actually helpful testimony.
        /*notes:
        g didn't see anybody in the evidence room
        */
        
        ->DONE

//I can't believe you got Neuralyzed
==Tree3==
=Root
#name Detective G 
Hey, that's still uncertain.
I don't recall ever getting Neuralyzed.
#name player 
Of course you don't. That's how it works.
#name Detective G 
But I mean, it would be totally obvious, right?
I'd have gaps in my memory or headaches or something?
#name player 
Not really. It'd only be obvious if key memories about your surroundings were taken away. 
And usually the Neuralyzer safety is set to get rid of only a few minutes of memory at a time.
#name Detective G 
Well, I'm racking both my brains, and I got nothing.
/*notes:
detective g doesn't remember getting Neuralyzed */

+Was anybody else with you in the evidence room? -> branch1
+Why did you go to the evidence room? -> branch2

    //was there anybody else -> why did you go
    =branch1
    #name Detective G
    You know, now that you mention it, 
    I don't remember seeing anyone else in there!
    #name player 
    You're certain?
    #name Detective G 
    Of course I'm certain! 
    The GOAT's memory is perfect.
    At least, it WAS until I apparently got Neuralyzed.
    #name player 
    /*notes 
    G didn't see anyone in the evidence room
    */
        ++Why did you go to the evidence room?
        #name Detective G 
        Well, since I was Neuralyed, I don't really remmeber.
        #name player 
        Really? You forgot?
        #name Detective G 
        Yessir.
        #name player 
        But you remember going to the room, right?
        #name Detective G 
        Yup.
        I guess the GOAT's motives will remain an enigma.
        #name player 
        (The GOAT's motives are always enigmatic if you ask me.)
        /*notes: 
        Det g forgot why he went to the room*/
        
        ->DONE
    
    =branch2
    #name Detectice G 
    Well, you know, since I was Nueralyzed, I don't really remember.
    #name player 
    Really? You forgot?
    #name Detective G 
    Yessir.
    #name player
    Not even your other head remembers?
    #name Detective G 
    Ah yes! I almost forgot! The GOAT has two minds!
    Backup head! What was the GOAT thinking?
    ...
    ...
    #name player 
    So?
    #name Detective G 
    I went...to check out evidence!
    #name player 
    What evidence?
    #name Detective G 
    The details are still fuzzy...
    If I rememer later I'll let you know.
    #name player 
    (This is going nowhere. I'll move on to another question).
    
    ~const1 = true
    /*notes: 
    detective g went to the evidence room to check out evidence 
    */
        ++Was anybody else with you in the evidence room?
        #name Detective G 
        How should I know? I mean, I was Nueralyzed, right?
        #name player 
        Just tell me what you remember.
        #name Detective G 
        Fine. I don't remember anyone in that room except me.
        #name player 
        See? Was that so hard?
        #name Detective G 
        Nah, it wasn't.
        /*notes:
        Detective G doesn't remember anyone else in the room 
        */
        
        ->DONE
        
==CONTRADICTION==
=Default
{const1 == true && Tree1.branch2: ->Cont1}
{const2 == true && Tree1.branch1: ->Cont2}
{const2 == true && Tree2: ->Cont2}
{const2 == true && Tree3.branch2: ->Cont2}
#name player 
Come on, G. You're above lying like this.
#name Detective G 
The GOAT never lies. 
#name player 
No, no, I think-
Oh, oops, nevermind.
#name Detective G 
You thought I was lying, I didn't contradict myself...
Are you interrogating me?
#name player 
Nope! Not at all! Don't worry about it! 
#returnToSave 
->END

=Cont1
#name player 
Come on, G. You're above lying like this.
#name Detective G 
The GOAT never lies.
#name player 
No, no, I think you did.
I Neuralyzed you.
See, on my recording, you claim that you went into the evidence room to get evidence.
You didn't mention this e-mail under different stimuli.
#name Detective G 
That's a cold blow.
The GOAT finds this quite unsavory.
#name player 
Now, please, give me the truth, the full truth.
->TRUTH

=Cont2
#name player 
Come on, G. You're above lying like this.
#name Detective G 
The GOAT never lies.
#name player 
No, no, I think you did.
I Neuralyzed you.
See, on my recording, you mentiond something about an e-mail telling you to go to the evidence room?
Why didn't you mention this e-mail now?
#name Detective G 
Wow, I can't believe you would do this to me!
Am I seriously a suspect in this case?
#name player 
Maybe. Now please, just give me the full truth. 
No embellishments, no third person, just honest testimony please.
And I'll know when it's honest, of course.
->TRUTH

==TRUTH==
~done = true 
#name Detective G 
Well, it's hard for me to know what you know since I can't remember what I've already said.
Did I tell you about the e-mail already?
#name player 
You did.
#name Detective G 
Well, that part's the truth. I did get an anonymous e-mail,
from goatfan22@goaty.com. 
Didn't manage to trace it.
#name player 
OK. Is that all? Why did you lie about it?
#name Detective G 
No, that's not all. Have I told you about Sleethy yet?
#name player 
No, what about her? 
#name Detective G 
I saw her enter the evidence room. 
I didn't see her leave, she just vanished.
I didn't want to say anything, because she's kinda hot, you know?
#name player 
I don't know.
...
Now, for the record, you saw nobody else?
#name Detective G 
That's correct. Nobody else was in the room.
#name player 
Was Sleethy holding anything when she entered the room?
#name Detective G 
Not that I recall, no.
And my other head DOES have a perfect memory.
#name player 
OK. This is valuable information. Thanks, G!
#name Detective G 
Yeah, no problem!
I am so relieved you're not mad at me! 
I thought for sure you'd combust or something after I coldly lied to you in a parallel dialogue option.
#name player 
Oh, I was mad. You just don't remember it.
->DONE


==DONE==
=Default
{done == true: ->done1}
#name player 
All right, G, that's all the questions I have for now.
#name Detective G 
Only 3? Huh, that's pretty short for an interrogation.
...
Wait, are you going to Nueralyze me?
#name player 
No. Don't worry about it.
->END

=done1
#name player 
Actually, never mind, G.
I was going to Neuralyze and interrogation you, but I don't think that's necessary on a fellow officer.
#name Detective G 
Hey, thanks! That's pretty goated of you! 
#name player 
(I never knew goat was also a verb and an adjective.)

->END

=done2
->END
