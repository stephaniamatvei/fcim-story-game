# author: Stephania Matvei, Irina Tiora, Daniela Afteni, Vlada Magal

VAR Courage = 0
VAR Luck = 0
VAR SocialState = 3
VAR Time = 0
VAR Lives = 1
VAR VerifyOption = false

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
    * [NO, even this doesn't intrigue you] 
    You choose to go home and later found out what happened from other students. Maybe you should've stayed to witness all the interesting stuff?
    <b>The end. <\b>
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
        <b>The end. <\b>
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
    # CLEAR
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
    
    * [You're afraid of what he might say back]
    Mr. Bostan: <b> I'll give you a hint. That's me. 
        -> Listen_To_The_Instructions
    ~ Luck++
    
= Listen_To_The_Instructions
# CLEAR
<b> Now listen to the enumerated instructions! 
    *[Start the game] -> START_THE_GAME
    

========== START_THE_GAME ==========
<b>Now the game will begin! Get ready! And remember, NO CHEATING!
    *[Ok, let's do it! Get ready for THE FIRST INSTRUCTION] -> Instruction_1
    
= Instruction_1
# CLEAR
Solve the given <b>formula</b> to enter the <b>computer's password</b> where you will find the next instruction.
#IMAGE: images/6.png
    *[Start the time] -> Start_Time

= Start_Time
# CLEAR
#IMAGE: images/7.jpg
    +[Don't cheat] -> Do_Not_Cheat
    +[Try to cheat] -> Cheat
    
    = Do_Not_Cheat
    # CLEAR
    You will calculate it by yourself cause you're confident in your math skills thanks to all the Calculus lessons you had in the 1st year! The answer is, obviously:
    ~ Time++
    #IMAGE: images/9.png
    
        + [4370244523] 
            Apparently those Calculus lessons weren't as clear as you remember. 
            ~ Time++
        + [-130] Come on, man. Really?
            ~ Time++
        + [198308604] Wow, you really payed attention last year! Nice!
            -> Done1
        + [Uhh... you have no idea. Random choice! (Probably feels to you like a midterm flashback...)]
            {
            - RANDOM(1, 3) == 3 : -> Done1
            - else : 
                ~ Time++
                No luck!
            } 
            
        - Try again. -> Start_Time
        
        
    = Done1
    # CLEAR
    It was complicated, but you did it!
    ~ SocialState++
    ~ Time++
    ~ Time++
    #IMAGE: images/10.png
        *[Next step] -> Common
    
    = Cheat
    # CLEAR
    You will use a calculator and will try to hide. Hopefully no one will notice you.
    ~ Time ++
    ~ SocialState--
    ~ Time++
    #IMAGE: images/8.jpg
    {
    - RANDOM(1, 10) > 7 : -> Done2
    - else : You got caught cheating! You are eliminated!
            <b>The end. <\b>
            -> END
    }  

    = Done2
    # CLEAR
    You got the result very fast!
    #IMAGE: images/10.png
        *[Next step] -> Common
    
    = Common
    # CLEAR
    A student noticed that you have the result and wants to take it, which is not really pleasant. You can defend your result, which will take longer, or share the result.
    ~ Time++
    #IMAGE: images/11.jpg
    *[You say NO directly!] -> Disagree
    *[He will get the result anyway, why not share?] -> Agree
    
    = Agree
    # CLEAR
    ~ Time++
        *[Go to the computer] 
        #IMAGE: images/14.png
        -> Not_The_First
        
    = Not_The_First
    # CLEAR
    You are not the first, you should wait your turn.
    ~ Time++
    ~ Time++
        *[Wait] -> Next_Instruction
    
    = Next_Instruction
    # CLEAR
    Open the file with the next instruction, it contains the location of the station, light box 2 instruction: the light in the building must be turned on 
        *[Next] -> Next 
        
        = Next
        # CLEAR
        In that room there are already some students including that student who offended you.
        Nobody knows from where the problem comes...
            *[You will wait until somebody has an idea, and stole the opportunity, so be the first (as that student did to you)] -> Stole_The_Opportunity
            *[You will wait until somebody solves the problem]
            ->Instruction_2.someElseSolvesLightChallenge
            *[You will try to come up with a solution] -> solveChallengeYourselfVerified
            

        =solveChallengeYourselfVerified
            ~VerifyOption = true
            ->Instruction_2.solveLightChallengeByYourself
        
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
                   *[Try to solve it yourself] -> Instruction_2.solveLightChallengeByYourself
                   *[Wait for someone else to solve it] -> Instruction_2.someElseSolvesLightChallenge
            - else:
                No, a mistake is a mistake, you didn't follow the rules
                <b>The end. <\b>
                -> END
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
                <b>The end. <\b>
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
    
    *[Try to solve it yourself] -> Instruction_2.solveLightChallengeByYourself
    *[Wait for someone else to solve it] -> Instruction_2.someElseSolvesLightChallenge
    
    
    -> DONE
    

===Instruction_2

=verifyProblem
*[Figure out the problem by yourself] 
   No need for outsider help!
    ~ Courage++
*[Ask somebody if they see a problem]
    They tell you it's probably something to do with the cables.
    ~ Luck++

- -> challenge2Options



=challenge2Options

You think about it a little. The panel seems suspicious enough. But most suspicious you find the:

+[Buttons on the panel] -> wrongChoice
    
    
+[Cables in the panel box] -> seeCable
    
+[Cables coming out of the panel box] -> wrongChoice

=solveLightChallengeByYourself
# CLEAR
#IMAGE: images/15.jpg


{
- VerifyOption: 
    ~Courage++
    -> verifyProblem
- else: 
    ~Courage = Courage + 2 // 
}


=wrongChoice
# CLEAR
Hm... After a close inspection, you don't see anything weird.
    ~Time++
    + [Try again]-> challenge2Options

=seeCable
# CLEAR
You notice one cut cable has been hidden in the others. Better remember how it looks like!
    # IMAGE: images/cable.png
    *[Now try to find a cable to replace it...]->findCable
    
=findCable
# CLEAR 
# IMAGE: images/cables.jpg
Another cable of the same type must be found. Luckily, you find this cable mess in some corner of the room. Uh-oh! Which cable did we need again? 

+[Red] -> wrongColor
    
+[Black] -> wrongColor
+[Orange] -> wrongColorOrange
   
+[Yellow] -> rightColor
    

=wrongColor
# CLEAR
Nope. Didn't work. You just wasted a bit of time. Try to remember!
    ~Time++
    -> findCable
=wrongColorOrange
# CLEAR
 Orange seemed familiar.Hm, still didn't work. You just wasted a bit of time. Try to remember!
    ~Time++
    -> findCable
=rightColor
# CLEAR
Yes! That was it. Good that you're so attentive. You replace the cable and...
    ~SocialState++
     -> theLightIsON

=someElseSolvesLightChallenge
# CLEAR
# IMAGE: images/16.jpg
A smart student found the problem instead and solved it. How lucky for you. Welp, you just want to get out of here, after all, why bother?
~Luck++
~Time = Time + 4

-> theLightIsON


=theLightIsON
The light is on. Congratulations! You can move to your final challenge of the day.
*[Move to challenge 3]->Instruction_3






==== Instruction_3
You must open the door, you have {(15- Time)*4}  minutes left; You need to find the key.
    *[Next] -> TheProblem
    =TheProblem
        You find a note on the door: <i>The answer to following problem is the auditorium where the key to the door is located</i>
    
        Below you see a problem writen on a piece of paper.
        # IMAGE: images/21.png
        * [Search the keys in auditoriums by yourself] -> Search_alone
        * [Gather a team and search every auditorium] -> Gather_team
        * [Solve the problem]-> Solve_problem
    
   
=Search_alone
# CLEAR
 ~Luck++
{
   
    - Luck>Courage:
        ->Finds_key
    -else:
        ->Someone_solved
}
    

=Finds_key
# CLEAR
    You find the key in the first auditorium you chose and won the contest!
    {
    - SocialState>=5:
        You are named as the best student, 
        you receive a prize.
         # IMAGE: images/30.jpg
         <b>The end. <\b>
        -> END
        
    -else:
        You received an honorary mention. You could have done better.
         # IMAGE: images/31.jpg
         <b>The end. <\b>
        -> END
    }
 
=Someone_solved
    Someone else solved the problem while you were searching for the key.
    You are one of the students who tried to win. Unfortunately, someone was faster than you.
    <b>The end. <\b>
      -> END
      
=Gather_team
# IMAGE: images/22.jpg
    ~SocialState++
    {
   
    - Luck>Courage:
        ~Time++
        ->Divide_rooms
    -else:
        ->Another_team
    }
    
    
=Divide_rooms
 # CLEAR
    You divide the auditoriums between the team members and everyone searches.
    One of the team members find the key.
     {
    - SocialState>=6 and Courage>3:
        Your team was awarded and declared the best PBL team and the bravest.
         # IMAGE: images/32.jpg
         <b>The end. <\b>
        -> END
    - SocialState>=6 and Courage<=3:  
        Your team was awarded and declared the best PBL team.
         # IMAGE: images/34.jpg
         <b>The end. <\b>
        -> END
    -else:
        Your team was just  awarded
         # IMAGE: images/33.png
         <b>The end. <\b>
        -> END
    }

=Another_team   
 # CLEAR
    Another team found the key.
     # IMAGE: images/28.jpg
    *[Next] You are one of the students who tried to win.
    <b>The end. <\b>
    -> END
    
=Solve_problem
     * [Discuss the problem with others] -> Discuss
     * [Solve by yourself] -> Solving_Problem
    
=Solving_Problem
    # CLEAR
    You take some time to concentrare on the problem.
    # IMAGE: images/21.png
    *[Next]->findingSolution
    =findingSolution
        After some 12 minutes of calculations you manage to find the right solution.That's right! It's auditorium 85!
        ~Courage++
        You succesfully solved the problem , and found the key.
        **[Next]->winner
        =winner
        # CLEAR
            {
            - SocialState>=5 and Courage<=4:
                You are named as the best student, 
                you receive a prize.
                 # IMAGE: images/30.jpg
                 <b>The end. <\b>
                -> END
            - SocialState<5 :  
                You received an honorary mention. You could have done better.
                 # IMAGE: images/31.jpg
                 <b>The end. <\b>
                -> END
            -SocialState>=5 and Courage>4:
                You are named as the best student and the the bravest, 
                you receive a prize.
                 # IMAGE: images/29.png
                 <b>The end. <\b>
                -> END
            }
    
=Discuss
    # CLEAR
    { -not Elevator:
        It helped you find the solution, but you are not the first to find the solution.
    } 

    +[Run towards the auditorium]->Running
    
    *[Pick the elevator]->Elevator
    
    
=Elevator

~ temp Probability = RANDOM(1, 10)
    {
    - Probability>=7 :
        The elevator was somewhat empty and you managed to be first.
         # IMAGE: images/27.jpg
         *[Next]->winning
        
    - else :
        # CLEAR
        ~Time++
        Unfortunately the elevators are too crowded and you fail to use them.
         # IMAGE:  images/26.jpg
        *[Next]->Discuss
    
    }
     =winning
        You found the key in room 85.
         # IMAGE: images/28.jpg
         *[Next]->award
        =award 
        # CLEAR
        You won and was awarded.
         # IMAGE: images/29.png
         
        {
        - SocialState>=5 and Courage<=2:
           You are named as the best student, 
            you receive a prize.
             # IMAGE: images/30.jpg
             <b>The end. <\b>
            -> END
        - SocialState<5 :  
            You received an honorary mention. You could have done better.
             # IMAGE: images/31.jpg
             <b>The end. <\b>
            -> END
        -SocialState>=5 and Courage>2:
            You are named as the best student and the the bravest,
            you receive a prize.
             # IMAGE: images/29.png
             <b>The end. <\b>
            -> END
        }
         

=Running
    # Clear
    While running you encounter Mr. Dean greeting you and asking you to bring him a glass of water.
     # IMAGE:  images/25.jpg
     ~ temp flag=1
    * [Accept]   ->statusIncrease
  
    * [Decline] ->badChoice

    =statusIncrease
            ~SocialState++
            ~Lives++ 
            ~SocialState++
            ~Time++ 
            ~Luck++ 
            ->EnteringRoom
    =badChoice
    
            ~Lives--
            ->EnteringRoom
    
    =EnteringRoom
    # CLEAR
    
    You enter the room and find the key.
    {
        - Time>15:
            Time is out, you didn't win!
            <b>The end. <\b>
            -> END
        -else: ->MrDean_Meeting
        
    }
    
=MrDean_Meeting  
    
    While returning the key falls and a student wants to steal the key from you!
    ~Time++
    Mr. Dean interferes. 
        {
            - Time>15:
                Time is out, you didn't win!
                <b>The end. <\b>
                -> END
        }
    *[Next]The student wants to convince it's you who stole the key from them!
      {
        - Lives>1:
            Mr. Dean actually saw how the key fell from you pocket as he was drinking his water.
            You succesfuly opened the door!
            {
                - SocialState>=7 and Courage<=4:
                    # CLEAR
                    You are named as the best student, 
                        you receive a prize.
                     # IMAGE:  images/30.jpg
                     <b>The end. <\b>
                    -> END
                - SocialState<7 :
                     # CLEAR
                    You received an honorary mention. You could have done better.
                     # IMAGE:  images/31.jpg
                     <b>The end. <\b>
                    -> END
                - SocialState>=7 and Courage>4:
                    # CLEAR
                    You are named as the best student and the the bravest, you receive a prize.
                     # IMAGE:  images/29.png
                     <b>The end. <\b>
                    -> END
            }
            
        - else:
            Mr Dean Believes the student and you are <b>disqualified<\b>!
            <b>The end. <\b>
            -> END
        }
     

-> END
