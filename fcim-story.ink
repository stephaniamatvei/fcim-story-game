VAR Courage = 0
VAR Luck = 0
VAR SocialState = 0
VAR Time = 0
VAR Lives = 1

// VAR Debug = true

-> Party_Invitation

===== Party_Invitation =====
This year the <b>Faculty of Computers, Informatics and Microelectronics</b> of the <b>Technical University of Moldova</b> is celebrating its <b>55th anniversary</b>! 
For this reason, the Dean of the faculty is organizing a special event where each and every FCIM student is invited!

    * [Accept the invitation] -> Accepted
    * [Refuse the invitation] -> Declined

= Accepted
Thanks for joining! The details to the private event will be sent shortly.
    * [Next] -> Party_Time

= Declined
Think twice, Mr. Pumpkin has prepared something special.
    * [HELL YES! sounds convincing] -> Accepted
    * [NO, even this doesn't intrigue me] -> END

===== Party_Time =====
Welcome! The event will start with Mr. Ciorbă's and Mr. Pumpkin's speeches.
    * [Next] -> Speech

= Speech
The rector and the dean of the faculty have finished their speeches and now they left the event to let the students <b>have fun :)</b>
    * [Stay] -> Beginning
    * [Leave] -> END

= Beginning
After 10 minutes all the lights were turned off, doors locked and someone started giving escape instructions through the speakers located in the room.
    * [Wait until someone asks about the purpose of the action]
    
    ~ Luck++
    * [Ask first what this is for]
    
    ~ Courage ++
    * [I'm calling the police]
    We are warned Rule! You can't call the police or anyone else to escape Rule! You will only come out at the end of the game Rule! You have 1 hour! No use of calculators!!!

- This is a unique and historical experience. You will have to leave as soon as possible, as only the first student will be spared.
Of course, <b>if you'll reach it</b> on time ...
    * [Next] -> Hello_Bostan
    
= Hello_Bostan
Think a little bit...hmm...
~ SocialState++
    * [Ok, now I think I know who this is!] -> MrBostan_Revealed
    
= MrBostan_Revealed
Mr. Bostan ??
<i>Everybody understands that this is Mr. Bostan</i> -> Prove_It

= Prove_It
    * [Say a reason]
    
    ~ Courage++
    Bostan: Then you have to be even more motivated to get out of the block <b>first</b>.
    * [I'm afraid of what he might say back]
    
    ~ Luck++
    Bostan: I'll give you a hint. That's me.

- Now listen to the enumerated instructions!


-> END
