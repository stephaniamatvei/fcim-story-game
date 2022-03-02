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

    * [Accept the invitation] -> Accepted 
    * [Refuse the invitation] -> Declined 
    
= Accepted
Thanks for joining! The details to the private event will be sent shortly.
    * [Next] -> PARTY_TIME
= Declined
Think twice, Mr. Pumpkin has prepared something special.
    * [HELL YES! sounds convincing] -> Accepted
    * [NO, even this doesn't intrigue me] -> END 


========== PARTY_TIME ==========
Welcome! The event will start with Mr. Ciorbă's and Mr. Pumpkin's speeches.
#IMAGE: images/2.jpg
    * [Next] -> Speech

= Speech
The rector and the dean of the faculty have finished their speeches and now they left the event to let the students <b>have fun :)</b>
    * [Stay] -> Beginning
    * [Leave] -> END

= Beginning
After 10 minutes all the lights were turned off, doors locked and someone started giving escape instructions through the speakers of the room.
#IMAGE: images/3.jpg

    * [Wait until someone asks about the purpose of the action]
    
    ~ Luck++
    * [Ask first what this is for]
    
    ~ Courage ++
    * [I'm calling the police]
    We are warned Rule! You can't call the police or anyone else to escape Rule! You will only come out at the end of the game Rule! You have 1 hour! No use of calculators!!!
    #IMAGE: images/4.jpg

-  This is a unique and historical experience. You will have to leave as soon as possible, as only the first student will be spared.
    Of course, <b>if you'll reach it</b> on time ...
    * [Think a little bit] -> Hello_Bostan
    * [Listen to the enumerated instructions] -> Listen_To_The_Instructions
    
= Hello_Bostan
~ SocialState++
hmm...
    * [Ok, I think I know who this is!] -> MrBostan_Revealed
    
= MrBostan_Revealed
Mr. Bostan ??
#IMAGE: images/5.jpg
<i>Everybody understands that this is Mr. Bostan</i> 
    <b>PROVE IT!</b> -> Prove_It

= Prove_It
    * [Say a reason]
    Bostan: Then you have to be even more motivated to get out of the block <b>first</b>. -> Listen_To_The_Instructions
    ~ Courage++
    
    * [I'm afraid of what he might say back]
    Bostan: I'll give you a hint. That's me. 
        -> Listen_To_The_Instructions
    ~ Luck++
    
= Listen_To_The_Instructions
Now listen to the enumerated instructions! 
    *[Start the game] -> START_THE_GAME
    

========== START_THE_GAME ==========
Now the game will begin! Get ready!
    *[Ok, let's do it! Show me THE FIRST INSTRUCTION] -> Instruction_1
    
= Instruction_1
Solve the given <b>formula</b> to enter the <b>computer's password</b> where you will find the next instruction.
#IMAGE: images/6.png
    *[Start the time] -> Start_Time

= Start_Time
#IMAGE: images/7.jpg
    *[don't cheat] -> Do_Not_Cheat
    *[cheat] -> Cheat
    
    = Do_Not_Cheat
    I will calculate it by myself cause I'm confident in me thanks to all the math lessons I had in the 1st year!
    ~ Time++
    #IMAGE: images/9.png
        *[Done!] -> Done1
    = Done1
    It was complicated, but I did it!
    ~ SocialState++
    ~ Time++
    ~ Time++
    #IMAGE: images/10.png
        *[next step] -> Common
    
    = Cheat
    I will use a calculator and will try to hide
    ~ Time ++
    ~ SocialState--
    ~ Time++
    #IMAGE: images/8.jpg
        *[Done!] -> Done2
    = Done2
    I got the result very fast!
    #IMAGE: images/10.png
        *[next step] -> Common
    
    = Common
    Somebody from students noticed that you have the result and wants to take your result, which is not really pleasant.
    ~ Time++
    #IMAGE: images/11.jpg
    *[say NO concretely!] -> Disagree
    *[He will get the result anyway, if not from me, than from someone else] -> Agree
    
    = Agree
    ~ Luck++
    ~ Time++
        *[Go to the computer] 
        #IMAGE: images/14.png
        -> Not_The_First
        
    = Not_The_First
    You are not the first, you should wait your turn
    ~ Time++
    ~ Time++
        *[Waited] -> Next_Instruction
    
    = Next_Instruction
    Open the file with the next instruction, it contains the location of the station, light box 2 instruction: the light in the building must be turned on 
        *[Next] -> Next 
        
        = Next
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
    ~ Courage++
    #IMAGE: images/13.jpeg
        *[Go to the computer] -> First
    = First
    ~ Time++
    #IMAGE: images/14.png
        *[Next]
        Congrats! You are the <b>first</b>!
        ~ Time++
        -> Next3
    = Next3
    Open the file with the next instruction, it contains the location of the station, light box 2 instruction: the light in the building must be turned on.
    
    <i>To be continued...</i>
    -> DONE
    
    ~ Luck++

-> END
