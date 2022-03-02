# author: Stephania Matvei, Irina Tiora, Daniela Afteni, Vlada Magal

VAR Courage = 0
VAR Luck = 0
VAR SocialState = 0
VAR Time = 0
VAR Lives = 1

-> PARTY_INVITATION


========== PARTY_INVITATION ==========
This year the <b>Faculty of Computers, Informatics and Microelectronics</b> of the <b>Technical University of Moldova</b> is celebrating its <b>55th anniversary</b>! 
For this reason, the Dean of the faculty, Mr. Ciorbă, is organizing a special event where each and every FCIM student is invited!
#IMAGE: images/1.png

    * [Accept the invitation] ->  Accepted 
    * [Refuse the invitation] -> Declined 
    
= Accepted
# CLEAR
Congrats, you're in for a really good time. You wonder what's gonna happen at the party?
    * [Next] -> PARTY_TIME
= Declined
# CLEAR
Think twice, Mr. Pumpkin has prepared something special.
    * [HELL YES! sounds convincing] -> Accepted
    * [NO, even this doesn't intrigue me] 
    You choose to go home and later found out what happened from other students. Maybe you should've stayed to witness all the interesting stuff?
    -> END 


========== PARTY_TIME ==========
Finally, the day has come. 
You go to the party and find all your friends. After a while, the dreaded speeches start. You start to nod off...
#IMAGE: images/2.jpg
    * [Next] -> Speech

= Speech
# CLEAR
You awaken just as somebody begins to speak on stage. You catch the end of their speech: "... We are very proud to have all of you here for the 55th anniversary of our university, to celebrate together the wonderful achievements, people, and values that unite us…" Yeah, no wonder you fell asleep in the first place.

But now that everyone's done with the speeches, it's time for the students to have a <b> bit of fun! >:) </b> 

Are you up for it or have the speeches sucked all the party spirit our of you?
    * [Stay] -> Beginning
    * [Leave] 
        You choose to go home and later found out what happened from other students. Maybe you should've stayed to witness all the interesting stuff?
        -> END

= Beginning
# CLEAR
After 10 minutes all the lights were turned off, doors locked and someone started giving escape instructions through the speakers of the room.
#IMAGE: images/3.jpg

    * [Wait until someone asks about the purpose of the action]
    
    ~ Luck++
    * [Ask what this is]
    
    ~ Courage ++
    * [Call the damn cops!]
    Damn! You notice there's no reception, and are about to ask someone else if they can call someone-- but it seems you've been notices:
    VOICE THROUGH THE SPEAKERS: <b> No phones allowed! No cheating allowed! Consider this your last warning, student!
    #IMAGE: images/4.jpg

-  VOICE THROUGH THE SPEAKERS: <b>Now, welcome to our special event. This is a chance for each of you to prove your problem-solving abilities! After all, isn't this the foundation of our beloved university? Follow the instructions, and good luck! See you at the end!
What the hell is going on?! You will have to leave as soon as possible!
    Of course, <b>if you'll reach it</b> on time ...
    * [Wait! you've heard that phrase before!] -> Hello_Bostan
    * [Whatever, listen to the enumerated instructions] -> Listen_To_The_Instructions
    
= Hello_Bostan
# CLEAR
~ SocialState++
Shivers go down your spine. The Special Math course exams flash through your mind. Of course you know you've heard this so many times! The mastermind behind all of this is:
    * [Mr. Bostan?!] -> MrBostan_Revealed
    * [Mrs. Cojuhari?!] No, that's not it. -> Listen_To_The_Instructions
    
= MrBostan_Revealed
# CLEAR
<i>Of course it's Mr. Bostan! If this challenge is like his exams, you have a HUGE problem on your hands. You ask if it's Mr. Bostan talking.
#IMAGE: images/5.jpg

    VOICE THROUGH THE SPEAKERS:<b>You think you know who I am? Prove it!</b> -> Prove_It

= Prove_It

    * [Say your reason]
    Mr. Bostan: <b> Well, it's no formal proof, but I appreciate your attempt. Keep doing that and you might win!  -> Listen_To_The_Instructions
    ~ Courage++
    
    * [I'm afraid of what he might say back]
    Mr. Bostan: <b> I'll give you a hint. That's me. 
        -> Listen_To_The_Instructions
    ~ Luck++
    
= Listen_To_The_Instructions
# CLEAR
<b> Now listen to the enumerated instructions! 
    *[Start the game] -> START_THE_GAME
    

========== START_THE_GAME ==========
<b>Now the game will begin! Get ready! And remember, NO CHEATING!
    *[Ok, let's do it! Show me THE FIRST INSTRUCTION] -> Instruction_1
    
= Instruction_1
# CLEAR
Solve the given <b>formula</b> to enter the <b>computer's password</b> where you will find the next instruction.
#IMAGE: images/6.png
    *[Start the time] -> Start_Time

= Start_Time
#IMAGE: images/7.jpg
    +[Don't cheat] -> Do_Not_Cheat
    +[Try to cheat] -> Cheat
    
    = Do_Not_Cheat
    I will calculate it by myself cause I'm confident in me thanks to all the Calculus lessons I had in the 1st year! The answer is, obviously:
    ~ Time++
    #IMAGE: images/9.png
    
        + [4370244523] 
            Apparently those Calculus lessons weren't as clear as you remember. 
            ~ Time++
        + [-130] Come on, man. Really?
            ~ Time++
        + [198308604] Wow, you really payed attention last year! Nice!
            -> Done1
        + [Uhh... no idea. Random choice! (Feels like a midterm flashback...)]
            {
            - RANDOM(1, 3) == 3 : -> Done1
            - else : 
                ~ Time++
                No luck!
            } 
            
        - Try again. -> Start_Time
        
        
    = Done1
    # CLEAR
    It was complicated, but I did it!
    ~ SocialState++
    ~ Time++
    ~ Time++
    #IMAGE: images/10.png
        *[Next step] -> Common
    
    = Cheat
    # CLEAR
    I will use a calculator and will try to hide. Hopefully no one will notice me.
    ~ Time ++
    ~ SocialState--
    ~ Time++
    #IMAGE: images/8.jpg
    {
    - RANDOM(1, 10) > 7 : -> Done2
    - else : You got caught cheating! You are eliminated!
            -> END
    }  

    = Done2
    # CLEAR
    I got the result very fast!
    #IMAGE: images/10.png
        *[Next step] -> Common
    
    = Common
    # CLEAR
    A student noticed that you have the result and wants to take it, which is not really pleasant. You can defend your result, which will take longer, or share the result.
    ~ Time++
    #IMAGE: images/11.jpg
    *[Say NO directly!] -> Disagree
    *[He will get the result anyway, why not share?] -> Agree
    
    = Agree
    # CLEAR
    ~ Time++
        *[Go to the computer] 
        #IMAGE: images/14.png
        -> Not_The_First
        
    = Not_The_First
    # CLEAR
    You are not the first, you should wait your turn
    ~ Time++
    ~ Time++
        *[Waited] -> Next_Instruction
    
    = Next_Instruction
    # CLEAR
    Open the file with the next instruction, it contains the location of the station, light box 2 instruction: the light in the building must be turned on 
        *[Next] -> Next 
        
        = Next
        # CLEAR
        In that room there are already some students including that student who offended you.
        Nobody knows from where the problem comes...
            *[I will wait until somebody has an idea, and stole the opportunity, so be the first (as that student did to me)] -> Stole_The_Opportunity
            *[I will wait until somebody solves the problem]
            To be continued...
            -> END
            *[I will try to come up with a solution]
            To be continued...
            -> END
        
        = Stole_The_Opportunity
        # CLEAR
        Announcement: You have been noticed while cheating, you broke the rule.
        #IMAGE: images/18.jpg
            *[Acknowledge the mistake and ask for forgiveness]
            #IMAGE: images/20.jpg
            ~ SocialState = 0
            ~ Lives--
            { Luck >= Courage:
                Ok, one more chance
                ~ Lives++
                -> END
            - else:
                No, a mistake is a mistake, you don't follow the rules
                -> Next2
            }
            
            *[Don't acknowledge your mistake]
            You insulted the creator and this game. 
            ~ Time++
            ~ Lives--
            ~ Time++
            #IMAGE: images/19.jpg
                **[Next]-> Next2 
                = Next2
                That was it, you are not allowed to continue the game!
                -> END
            
    = Disagree
    # CLEAR
    ~ Courage++
    #IMAGE: images/13.jpeg
        *[Go to the computer] -> First
    = First
    # CLEAR
    ~ Time++
    #IMAGE: images/14.png
        *[Next]
        Congrats! You are the <b>first</b>!
        ~ Time++
        -> Next3
    = Next3
    # CLEAR
    Open the file with the next instruction, it contains the location of the station, light box 2 instruction: the light in the building must be turned on.
    
    <i>To be continued...</i>
    -> DONE
    
    ~ Luck++

-> END
