#name player
Hey, Alabaster. I'm performing an investigation, and your name has come up.
Can I ask you a few questions?
#name Alabaster 
Hello Performing An Investigation And Your Name Has Come Up.
I am Alabaster. 
#name player 
Yes, yes, hello. Now, do you mind if I ask you a few questions?
#name Alabster 
I mind, yes. I mind, therefore I am.
Famous quote from famous Terran philosophizer.
#name player 
Look, if you're busy, I can come back later.
#name Alabster 
I am not Busy. I am Alabster. 
Alabster likes answering questions, yes.
Alabaster shall answer all the questions.
#name player 
(I hate talking to this guy sometimes.)


->BEGINNING

==BEGINNING==

VAR const1 = false
VAR const2 = false
VAR const3 = false
VAR done = false
#name player
(Let's see what we can find out about how he obtained ADA1N's gun.)

+ ADA1N told me you returned their blaster. How did you acquire it? -> Tree1
+ Were you in the evidence room three relative days ago? -> Tree2
+ Could you stop speaking in riddles for a second? -> Tree3

//ADA1N told me you returned their blaster when did you acquire it?
==Tree1==
=Root
#name Alabaster 
I know not.
#name player 
What do you mean, you don't know?
You were the person who returned it, right?
#name Alabaster 
Yes, I did.
#name player 
Then where did you pick it up?
#name Alabster 
Off of a desk.
#name player 
Whose desk?
#name Alabaster 
My desk.
#name player 
So you...what? Found the blaster on your desk?
#name Alabaster 
The blaster materialized on my desk whist I was away, as though the elder gods had plucked it from its proper place and delivered it straight to me.
...
So I returned it.
#name player 
Got it. (That's an oddly specific description).
/*notes:
Alabster found the blaster on his desk
*/


+Were you in the evidence room three relative days ago? -> branch1
+Could you stop speaking in riddles for a second? -> branch2

    //Were you in the evidence room three relative days ago -> stop speaking in riddles
    =branch1
    #name Alabaster 
    EEEEEEEEEEE
    MMMMMMMMMM
    ...
    No.
    #name player 
    (Ouch, my ears!)
    OK. Where were you three relative days ago at 3 o' clock relative to the closest sun?
    #name Alabaster 
    I was at home.
    #name player 
    Your home planet?
    #name Alabaster
    No. My desk-home.
    #name player 
    So, you were at your desk?
    #name Alabaster 
    Conceivably, yes.
    #name player 
    I'll put that down as an affirmative.
    ...
    What were you doing at your desk at that time?
    #name Alabaster 
    I was discovering the blaster that had been placed upon my desk by the elder gods.
    #name player 
    Excellent. Thank you. (This is so unhelpful.)
    /*notes:
    Alabaster was at his desk at the time of the theft, at 3 o'clock
    */
    ~const1 = true 
    
        ++Could you stop speaking in riddles for a second?
        #name Alabaster 
        Sure thing, friend. I found the blaster on my desk, I don't know who put it there.
        Is this easier to understand?
        #name player 
        Yes, much. Thank you, Alabaster.
        #name Alabaster 
        Your one second of sanity has passed. 
        Observe as the overly complex syntax format and grammar of my statemements combine with subtle mistakes in the Terran language to form a superstatement that confounds and delights in its purpose derived from meaninglessness; thereby crowning Alabaster the ruler of the known universe.
        #name player 
        (I hate this witness).
        
        /*
        Alabaster can be sensible but chooses not to
        */
        ->DONE
    
    //could you stop speaking in riddles for a second? -> were you in the evidence room 3 days ago?
    =branch2
        #name Alabaster
        Yeah, I could.
        #name player 
        Thank you.
        #name Alabaster 
        Or, I could not. 
        That is the question. 
        Whether 'tis nobler in the mind to suffer the EMPs and lasers of outrageous fortune, or to take out limbs against-
        #name player 
        That's enough, please, please stop.
        I have just a few more questions, if you could just answer them as plainly as possible.
        
            ++Were you in the evidence room three relative days ago?
            #name Alabaster 
            EEEEEEEEEEE
            OOOOOOOOO
            IIIIIIII
            ...
            No.
            #name player 
            Did you really have to take that long to think about it?
            #name Alabaster 
            Yes. Your question is ambiguously frought with subtle meaning.
            What does it mean to 'be'? To merely exist? Or to contribute to the inherent social heirarchy of company?
            A simple mind like Alabster's must take time to fathom these questions.
            #name plaer 
            Well, you've done your fathoming.
            ...
            Now, if you weren't in the evidence room at that time, where were you?
            #name Alabaster
            I was at my desk, existing in a state of reciving mail.
            #name player 
            What do you mean, 'state of receiving mail'?
            #name Alabaster 
            'Alabster recieves mail, therefore he is.'
            Famous Terran philosophy. 
            Alabster recieved a blaster in the mail from the elder gods, so Alabaster exists.
            #name player 
            So you were at your desk at this time, having just found the blaster?
            #name Alabaster 
            Alabaster affirms this statement with Detective C's pedestrian definitnion of 'were'.
            #name player
            Excellent. Thanks.
            /*notes:
            alabster was at his desk at the time*/
            ->DONE
    
//were you in the evidence room three relative days ago?
==Tree2==
=Root
#name Alabaster 
42.
#name player 
What?
#name Alabaster
42 is the answer. To everything.
#name player. 
I'm giving you a binary choice, here, Alabaster.
Yes or no.
There is no '42'.
#name Alabaster
Is there 43?
#name player
No, there's not.
Please just answer the question.
#name Alabaster 
Detective C already has the answer.
#name player 
No, I don't? You haven't told it to me.
#name Alabaster
Detective C has just said it.
#name player 
I said...no? No, you didn't go into the evidence room?
#name Alabaster 
Yes.
#name player 
Yes, you didn't go in there?
#name Alabaster 
Yes.
#name player 
All right. I'm putting down that you say you didn't go in there...
No objection?
Excellent. That took way too long. Moving on...
/*notes:
adain did not go into the evidence room*/

+ADA1N told me you returned their blaster. How did you acquire it? -> branch1
+Could you stop speaking in riddles for a second? -> branch2

    //where did you get the blaster
    =branch1
    #name Alabaster 
    Yes.
    #name player 
    That doesn't answer the question.
    #name Alabster 
    Oops! Alabaster has made an oopsie!
    EEEEEEEEEEE
    ...
    #name player 
    Can Alabaster get over his 'oopsie' and just tell Detective C the answer?
    #name Alabaster 
    Yes.
    ...
    The blaster materialized out of nowhere.
    #name player 
    Did it now?
    #name Alabaster
    Yes. Materlialized onto the desk of Alabaster while Alabaster was away.
    #name player 
    I see. So you found it on your desk, because it was placed there while you were gone. 
    Makes sense.
    /*notes:
    Alabaster found the blaster on his desk
    */
    
        ++Could you stop talking in riddles for a second?
        #name Alabaster 
        Sure thing, friend. I found the blaster on my desk, I don't know who put it there.
        Is this easier to understand?
        #name player 
        Yes, much. Thank you, Alabaster.
        #name Alabaster 
        Your one second of sanity has passed. 
        Alabaster now returns to his own mannerism of speaking which Detective C seems to find frustrating but for which Alabaster has been accustomed to for most of his lifetime.
        #name player 
        (I swear to science, this guy sometimes...).
        
        /*
        Alabaster can be sensible but chooses not to
        */
        ->DONE
    
    //Can you stop speaking in riddles -> how did you get the blaster
    =branch2
    #name Alabaster
    Yeah, I could.
    #name player 
    Thank you.
    #name Alabaster 
    Or, I could not. 
    That is the question. 
    Whether 'tis nobler in the mind to suffer the EMPs and lasers of outrageous fortune, or to take out limbs against-
    #name player 
    That's enough, please, please stop.
    I have just a few more questions, if you could just answer them as plainly as possible.
    
    
        ++ADA1N told me you returned their blaster. How did you acquire it?
        #name Alabaster
        The blaster descended from heaven.
        #name player 
        You are talking in riddles again. What do you mean?
        #name Alabaster
        Alabaster means what he says! The blaster descended from heaven, and landed on Alabaster's desk.
        #name player 
        You're telling me you saw the blaster descend from heaven, which I guess would be the closest sun, and fall on your desk?
        #name Alabaster
        No. Alabaster was away, sleepy-sleepy, when the blaster fell.
        It was even three relative days ago, KAPOW! The mircale hath occured.
        #name player 
        Do you rember when the 'miracle' occured?
        #name Alabaster 
        With a freshly sleepened mind, Alabaster remembers everything.
        Alabaster left the desk-hole at 1 o'clock to sleepy-pod, only to return at 5 o'clock and discover the mysterious blaster of mystery.
        #name player 
        And then you promptly returned it to ADA1N?
        #name Alabaster 
        Alabaster affirms.
        /*notes:
        Alabaster was asleep 3 days ago between 1 and 5 o'clock
        */
        ~const2 = true
    
        ->DONE
        
//could you stop speaking in riddles?
==Tree3==
=Root
#name Alabster 
Only if you can solve this riddle first:
'What does the wealthy creature have want for, but is afraid of having?'
#name player 
Well, let me think...
Is the answer 'nothing'?
The wealthy creature wants for nothing, but is afraid of having nothing?
#name Alabaster
Silly Detectice C. The answer can't be nothing. 
Then there is no answer!
#name player 
Well, back to square one. That's an elaborate way of saying 'no'.
How long did it take you to think that up?
#name Alabaster 
Alabaster does not think.
Alabaster simply makes gutteral sounds with skin flabs that produce 'speech'.
#name player 
Yeah, sure. Be like that.

+ADA1N told me you returned their blaster. How did you acquire it? -> branch1
+Were you in the evidence room three relative days ago? -> branch2

    //how did you get blaster -> were you in evidence room?
    =branch1
    #name Alabaster 
    Yes.
    #name player 
    That doesn't answer the question.
    #name Alabster 
    Oops! Alabaster has made an oopsie!
    EEEEEEEEEEE
    ...
    #name player 
    Can Alabaster get over his 'oopsie' and just tell Detective C the answer?
    #name Alabaster 
    Yes.
    ...
    The blaster materialized out of nowhere.
    #name player 
    Did it now?
    #name Alabaster
    Yes. Materlialized onto the desk of Alabaster while Alabaster was away.
    #name player 
    I see. So you found it on your desk, because it was placed there while you were gone. 
    Makes sense.
    /*notes:
    Alabaster found the blaster on his desk
    */
        ++Were you in the evidence room three relative days ago?
        #name Alabaster 
        EEEEEEEEEEE
        OOOOOOOOO
        IIIIIIII
        ...
        No.
        #name player 
        Did you really have to take that long to think about it?
        #name Alabaster 
        Yes. Your question is ambiguously frought with subtle meaning.
        What does it mean to 'be'? To merely exist? Or to contribute to the inherent social heirarchy of company?
        A simple mind like Alabster's must take time to fathom these questions.
        #name plaer 
        Well, you've done your fathoming.
        ...
        Now, if you weren't in the evidence room at that time, where were you?
        #name Alabaster
        I was at my desk, existing in a state of reciving mail.
        #name player 
        What do you mean, 'state of receiving mail'?
        #name Alabaster 
        'Alabster recieves mail, therefore he is.'
        Famous Terran philosophy. 
        Alabster recieved a blaster in the mail from the elder gods, so Alabaster exists.
        #name player 
        So you were at your desk at this time, having just found the blaster?
        #name Alabaster 
        Alabaster affirms this statement with Detective C's pedestrian definitnion of 'were'.
        #name player
        Excellent. Thanks.
        /*notes:
        alabster was at his desk at the time*/
        ->DONE
    
    //were you in evidence room -> how did you get blaster    
    =branch2
    #name Alabaster 
    No.
    #name player 
    OK. Where were you three relative days ago at 3 o' clock relative to the closest sun?
    #name Alabaster 
    I was at rest.
    #name player 
    In your sleeping pod?
    #name Alabaster
    AAAAAAA
    No.
    At the lounge.
    #name player 
    And how long were you at the lounge?
    #name Alabaster 
    EEEEEEEEEEE
    A long long time.
    #name player 
    Can you give me an estimate? In hours?
    #name Alabaster
    Alas, Alabaster's internal clock is broken, and Alabaster is bad at doing a time.
    Can Alabaster help you after his internal clock is re-installed?
    #name player 
    ~const3 = true
    I have no idea what you're talking about, again, so we'll move on to the next question.
    /*notes:
    alabster was in the lounge
    */
    
        ++ADA1N told me you returned their blaster. How did you acquire it?
        #name Alabaster
        The blaster descended from heaven.
        #name player 
        You are talking in riddles again. What do you mean?
        #name Alabaster
        Alabaster means what he says! The blaster descended from heaven, and landed on Alabaster's desk.
        #name player 
        You're telling me you saw the blaster descend from heaven, which I guess would be the closest sun, and fall on your desk?
        #name Alabaster
        No. Alabaster was away, sleepy-sleepy, when the blaster fell.
        It was even three relative days ago, KAPOW! The mircale hath occured.
        #name player 
        Do you rember when the 'miracle' occured?
        #name Alabaster 
        With a freshly sleepened mind, Alabaster remembers everything.
        Alabaster left the desk-hole at 1 o'clock to lounge, only to return at 5 o'clock and discover the mysterious blaster of mystery.
        #name player 
        And then you promptly returned it to ADA1N?
        #name Alabaster 
        Alabaster affirms.
        /*notes:
        alabaster was in the lounge frmo 1 to 3. THe blaster was dropped on his desk
        */
        ->DONE
        
        
==CONTRADICTION==
=Default

{const1 == true or const2 == true && Tree3.branch2: -> Cont1}
{const2 == true or const3 == true && Tree1: -> Cont1}
{const1 == true or const3 == true && Tree2.branch2: -> Cont1}

#name player 
Don't lie to me, Alabaster.
#name Alabster
Alabster never has told a lie in the past, present, or future.
#name player 
Well, errr, uhm...
Sorry, I must have misheard Alabaster.
Please continue your ramblings.
#name Alabaster.
Yes.
->END



=Cont1
#name player 
Don't lie to me, Alabaster.
#name Alabaster 
Lie? Alabaster has never lied in the past or present, and he never will.
#name player 
I have a memory loss device, Alabaster.
Without your memories to keep your alibi straight, you slipped up.
See, here in this footage you told me you were in a completely different place at 3 o'clock three relative days ago!
Now, where were you, and how did you get ADA1N's blaster? No riddles.
#name Alabaster 
Detective C cannot believe Alabaster. So Alabaster lie.
#name player 
I'm a detective. I know when you're lying. I want the truth, now.
#name Alabaster 
Alabaster tells and does not tell.
Alabaster went to the evidence room 3 relative days ago, to pick up evidence.
Next thing Alabaster knows, he's holding blaster, Detective G has blank look and blaster hole is in wall!
This is all Alabaster can recounts.
#name player
Interesting. You don't remember what you did in the evidence room?
#name Alabster 
MMMMMMMMMM
...
No.
#name player
Sounds like to me like you were hit with a memeory wipe and handed the blaster. 
This thief is more clever than I initially thought.
You won't remember this, but thanks for the info, Alabaster.
#name Alabaster 
Eh?
~done = true
->DONE



==DONE==
=Default

{done == true: ->done1}
#name player 
I don't have any more questions at the moment, but do you mind if I stick around a little bit to think?
#name Alabater 
I mind, therefore I am. Detective C thinks, therefore he is. We shall be together.
#name player 
Yes...? You're not wrong.
->END

=done1
#name player 
Nevermind, Alabaster. I have all the information I need.
#name Alabaster
But Alabaster was ready to answer all the questions!
How can Alabaster fulfill his social duties without necessary social interaction?
#name player 
Don't worry about it.
(Alabaster was memory wiped by the culprit...this isn't good.)
->END


