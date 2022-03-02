var storyContent = ﻿{"inkVersion":19,"root":[[{"#":"author: Stephania Matvei, Irina Tiora, Daniela Afteni, Vlada Magal"},{"->":"PARTY_INVITATION"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"PARTY_INVITATION":[["^This year the <b>Faculty of Computers, Informatics and Microelectronics</b> of the <b>Technical University of Moldova</b> is celebrating its <b>55th anniversary</b>!","\n","^For this reason, the Dean of the faculty, Mr. Ciorbă, is organizing a special event where each and every FCIM student is invited!","\n",{"#":"IMAGE: images/1.png"},"ev","str","^Accept the invitation","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Refuse the invitation","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ ",{"->":".^.^.^.Accepted"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.Declined"},"\n",{"#f":5}]}],{"Accepted":[[{"#":"CLEAR"},"^Congrats, you're in for a really good time. You wonder what's gonna happen at the party?","\n","ev","str","^Next","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":"PARTY_TIME"},"\n",{"#f":5}]}],{"#f":1}],"Declined":[[{"#":"CLEAR"},"^Think twice, Mr. Pumpkin has prepared something special.","\n","ev","str","^HELL YES! sounds convincing","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^NO, even this doesn't intrigue you","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Accepted"},"\n",{"#f":5}],"c-1":["^ ","\n","^You choose to go home and later found out what happened from other students. Maybe you should've stayed to witness all the interesting stuff?","\n","end",{"#f":5}]}],{"#f":1}],"#f":1}],"PARTY_TIME":[["^Finally, the day has come.","\n","^You go to the party and find all your friends. After a while, the dreaded speeches start. You start to nod off...","\n",{"#":"IMAGE: images/2.jpg"},"ev","str","^Next","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":".^.^.^.Speech"},"\n",{"#f":5}]}],{"Speech":[[{"#":"CLEAR"},"^You awaken just as somebody begins to speak on stage. You catch the end of their speech: \"... We are very proud to have all of you here for the 55th anniversary of our university, to celebrate together the wonderful achievements, people, and values that unite us…\" Yeah, no wonder you fell asleep in the first place.","\n","^But now that everyone's done with the speeches, it's time for the students to have a <b> bit of fun! >:) </b>","\n","^Are you up for it or have the speeches sucked all the party spirit our of you?","\n","ev","str","^Stay","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Leave","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Beginning"},"\n",{"#f":5}],"c-1":["^ ","\n","^You choose to go home and later found out what happened from other students. Maybe you should've stayed to witness all the interesting stuff?","\n","end",{"#f":5}]}],{"#f":1}],"Beginning":[[{"#":"CLEAR"},"^After 10 minutes all the lights were turned off, doors locked and someone started giving escape instructions through the speakers of the room.","\n",{"#":"IMAGE: images/3.jpg"},"ev","str","^Wait until someone asks about the purpose of the action","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Ask what this is","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Call the damn cops!","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["\n","ev",{"VAR?":"Luck"},1,"+",{"VAR=":"Luck","re":true},"/ev",{"->":".^.^.g-0"},{"#f":5}],"c-1":["\n","ev",{"VAR?":"Courage"},1,"+",{"VAR=":"Courage","re":true},"/ev",{"->":".^.^.g-0"},{"#f":5}],"c-2":["\n",{"#":"CLEAR"},"^Damn! You notice there's no reception, and are about to ask someone else if they can call someone-- but it seems you've been notices:","\n","^VOICE THROUGH THE SPEAKERS: <b> No phones allowed! No cheating allowed! Consider this your last warning, student!","\n",{"#":"IMAGE: images/4.jpg"},{"->":".^.^.g-0"},{"#f":5}],"g-0":["^VOICE THROUGH THE SPEAKERS: <b>Now, welcome to our special event. This is a chance for each of you to prove your problem-solving abilities! After all, isn't this the foundation of our beloved university? Follow the instructions, and good luck! See you at the end!","\n","^What the hell is going on?! You will have to leave as soon as possible!","\n","^Of course, <b>if you'll reach it</b> on time ...","\n","ev","str","^Wait! you've heard that phrase before!","/str","/ev",{"*":".^.c-3","flg":20},"ev","str","^Whatever, listen to the enumerated instructions","/str","/ev",{"*":".^.c-4","flg":20},{"c-3":["^ ",{"->":"PARTY_TIME.Hello_Bostan"},"\n",{"#f":5}],"c-4":["^ ",{"->":"PARTY_TIME.Listen_To_The_Instructions"},"\n",{"#f":5}],"#f":5}]}],{"#f":1}],"Hello_Bostan":[[{"#":"CLEAR"},"ev",{"VAR?":"SocialState"},1,"+",{"VAR=":"SocialState","re":true},"/ev","^Shivers go down your spine. The Special Math course exams flash through your mind. Of course you know you've heard this so many times! The mastermind behind all of this is:","\n","ev","str","^Mr. Bostan?!","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Mrs. Cojuhari?!","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.MrBostan_Revealed"},"\n",{"#f":5}],"c-1":["^ No, that's not it. ",{"->":".^.^.^.^.Listen_To_The_Instructions"},"\n",{"#f":5}]}],{"#f":1}],"MrBostan_Revealed":[{"#":"CLEAR"},"^<i>Of course it's Mr. Bostan! If this challenge is like his exams, you have a HUGE problem on your hands. You ask if it's Mr. Bostan talking.","\n",{"#":"IMAGE: images/5.jpg"},"^VOICE THROUGH THE SPEAKERS:<b>You think you know who I am? Prove it!</b> ",{"->":".^.^.Prove_It"},"\n",{"#f":1}],"Prove_It":[["ev","str","^Say your reason","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^You're afraid of what he might say back","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n","^Mr. Bostan: <b> Well, it's no formal proof, but I appreciate your attempt. Keep doing that and you might win! ",{"->":".^.^.^.^.Listen_To_The_Instructions"},"\n","ev",{"VAR?":"Courage"},1,"+",{"VAR=":"Courage","re":true},"/ev",{"#f":5}],"c-1":["\n","^Mr. Bostan: <b> I'll give you a hint. That's me.","\n",{"->":".^.^.^.^.Listen_To_The_Instructions"},"ev",{"VAR?":"Luck"},1,"+",{"VAR=":"Luck","re":true},"/ev",{"#f":5}]}],{"#f":1}],"Listen_To_The_Instructions":[[{"#":"CLEAR"},"^<b> Now listen to the enumerated instructions!","\n","ev","str","^Start the game","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":"START_THE_GAME"},"\n",{"#f":5}]}],{"#f":1}],"#f":1}],"START_THE_GAME":[["^<b>Now the game will begin! Get ready! And remember, NO CHEATING!","\n","ev","str","^Ok, let's do it! Get ready for THE FIRST INSTRUCTION","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":".^.^.^.Instruction_1"},"\n",{"#f":5}]}],{"Instruction_1":[[{"#":"CLEAR"},"^Solve the given <b>formula</b> to enter the <b>computer's password</b> where you will find the next instruction.","\n",{"#":"IMAGE: images/6.png"},"ev","str","^Start the time","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Start_Time"},"\n",{"#f":5}]}],{"#f":1}],"Start_Time":[[{"#":"CLEAR"},{"#":"IMAGE: images/7.jpg"},"ev","str","^Don't cheat","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^Try to cheat","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ ",{"->":".^.^.^.^.Do_Not_Cheat"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.^.Cheat"},"\n",{"#f":5}]}],{"#f":1}],"Do_Not_Cheat":[[{"#":"CLEAR"},"^You will calculate it by yourself cause you're confident in your math skills thanks to all the Calculus lessons you had in the 1st year! The answer is, obviously:","\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"#":"IMAGE: images/9.png"},"ev","str","^4370244523","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^-130","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^198308604","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^Uhh... you have no idea. Random choice! (Probably feels to you like a midterm flashback...)","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["^ ","\n","^Apparently those Calculus lessons weren't as clear as you remember.","\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"->":".^.^.g-0"},{"#f":5}],"c-1":["^ Come on, man. Really?","\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"->":".^.^.g-0"},{"#f":5}],"c-2":["^ Wow, you really payed attention last year! Nice!","\n",{"->":".^.^.^.^.Done1"},{"->":".^.^.g-0"},{"#f":5}],"c-3":["\n",["ev",1,3,"rnd",3,"==","/ev",{"->":".^.b","c":true},{"b":["\n",{"->":".^.^.^.^.^.^.Done1"},{"->":".^.^.^.3"},null]}],[{"->":".^.b"},{"b":["\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev","^No luck!","\n",{"->":".^.^.^.3"},null]}],"nop","\n",{"->":".^.^.g-0"},{"#f":5}],"g-0":["^Try again. ",{"->":".^.^.^.^.Start_Time"},"\n",{"#f":5}]}],{"#f":1}],"Done1":[[{"#":"CLEAR"},"^It was complicated, but you did it!","\n","ev",{"VAR?":"SocialState"},1,"+",{"VAR=":"SocialState","re":true},"/ev","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"#":"IMAGE: images/10.png"},"ev","str","^Next step","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Common"},"\n",{"#f":5}]}],{"#f":1}],"Cheat":[{"#":"CLEAR"},"^You will use a calculator and will try to hide. Hopefully no one will notice you.","\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev","ev",{"VAR?":"SocialState"},1,"-",{"VAR=":"SocialState","re":true},"/ev","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"#":"IMAGE: images/8.jpg"},["ev",1,10,"rnd",7,">","/ev",{"->":".^.b","c":true},{"b":["\n",{"->":".^.^.^.^.Done2"},{"->":".^.^.^.24"},null]}],[{"->":".^.b"},{"b":["\n","^You got caught cheating! You are eliminated!","\n","end",{"->":".^.^.^.24"},null]}],"nop","\n",{"#f":1}],"Done2":[[{"#":"CLEAR"},"^You got the result very fast!","\n",{"#":"IMAGE: images/10.png"},"ev","str","^Next step","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Common"},"\n",{"#f":5}]}],{"#f":1}],"Common":[[{"#":"CLEAR"},"^A student noticed that you have the result and wants to take it, which is not really pleasant. You can defend your result, which will take longer, or share the result.","\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"#":"IMAGE: images/11.jpg"},"ev","str","^You say NO directly!","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^He will get the result anyway, why not share?","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Disagree"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.^.Agree"},"\n",{"#f":5}]}],{"#f":1}],"Agree":[[{"#":"CLEAR"},"ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev","ev","str","^Go to the computer","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ","\n",{"#":"IMAGE: images/14.png"},{"->":".^.^.^.^.Not_The_First"},{"#f":5}]}],{"#f":1}],"Not_The_First":[[{"#":"CLEAR"},"^You are not the first, you should wait your turn","\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev","ev","str","^Waited","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Next_Instruction"},"\n",{"#f":5}]}],{"#f":1}],"Next_Instruction":[[{"#":"CLEAR"},"^Open the file with the next instruction, it contains the location of the station, light box 2 instruction: the light in the building must be turned on","\n","ev","str","^Next","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Next"},"\n",{"#f":5}]}],{"#f":1}],"Next":[[{"#":"CLEAR"},"^In that room there are already some students including that student who offended you.","\n","^Nobody knows from where the problem comes...","\n","ev","str","^You will wait until somebody has an idea, and stole the opportunity, so be the first (as that student did to you)","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^You will wait until somebody solves the problem","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^You will try to come up with a solution","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.Stole_The_Opportunity"},"\n",{"#f":5}],"c-1":["\n","^To be continued...","\n","end",{"#f":5}],"c-2":["\n","^To be continued...","\n","end",{"#f":5}]}],{"#f":1}],"Stole_The_Opportunity":[[{"#":"CLEAR"},"^Announcement: You have been noticed while cheating, you broke the rule.","\n",{"#":"IMAGE: images/18.jpg"},"ev","str","^Acknowledge the mistake and ask for forgiveness","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Don't acknowledge your mistake","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n",{"#":"IMAGE: images/20.jpg"},"ev",0,"/ev",{"VAR=":"SocialState","re":true},"ev",{"VAR?":"Lives"},1,"-",{"VAR=":"Lives","re":true},"/ev","ev",{"VAR?":"Luck"},{"VAR?":"Courage"},">=","/ev",[{"->":".^.b","c":true},{"b":["\n","^Ok, one more chance","\n","ev",{"VAR?":"Lives"},1,"+",{"VAR=":"Lives","re":true},"/ev","end",{"->":".^.^.^.19"},null]}],[{"->":".^.b"},{"b":["\n","^No, a mistake is a mistake, you don't follow the rules","\n",{"->":".^.^.^.^.^.^.Next2"},{"->":".^.^.^.19"},null]}],"nop","\n",{"#f":5}],"c-1":["\n","^You insulted the creator and this game.","\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev","ev",{"VAR?":"Lives"},1,"-",{"VAR=":"Lives","re":true},"/ev","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"#":"IMAGE: images/19.jpg"},["ev","str","^Next","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":[{"->":".^.^.^.^.^.^.Next2"},"\n",{"#f":5}]}],{"#f":5}]}],{"#f":1}],"Next2":["^That was it, you are not allowed to continue the game!","\n","end",{"#f":1}],"Disagree":[[{"#":"CLEAR"},"ev",{"VAR?":"Courage"},1,"+",{"VAR=":"Courage","re":true},"/ev",{"#":"IMAGE: images/13.jpeg"},"ev","str","^Go to the computer","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ",{"->":".^.^.^.^.First"},"\n",{"#f":5}]}],{"#f":1}],"First":[[{"#":"CLEAR"},"ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"#":"IMAGE: images/14.png"},"ev","str","^Next","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^Congrats! You are the <b>first</b>!","\n","ev",{"VAR?":"Time"},1,"+",{"VAR=":"Time","re":true},"/ev",{"->":".^.^.^.^.Next3"},{"#f":5}]}],{"#f":1}],"Next3":[{"#":"CLEAR"},"^Open the file with the next instruction, it contains the location of the station, light box 2 instruction: the light in the building must be turned on.","\n","^<i>To be continued...</i>","\n","done","ev",{"VAR?":"Luck"},1,"+",{"VAR=":"Luck","re":true},"/ev","end",{"#f":1}],"#f":1}],"global decl":["ev",0,{"VAR=":"Courage"},0,{"VAR=":"Luck"},0,{"VAR=":"SocialState"},0,{"VAR=":"Time"},1,{"VAR=":"Lives"},"/ev","end",null],"#f":1}],"listDefs":{}};