
"DP Projekt 2025" by Klara Škaulj

Release along with an interpreter.
Release along with a website.
Release along with the introductory booklet.


When play begins:
	say "Wake up, Count Dorklok! You are here. In the City. Eight hours of train travel almost made you forget why you are here in the first place. Let me remind you! The rent is not gonna pay itself and Chief Redd needs you to help him find out some information. You see, there has been a robbery - at the blood bank! There is only one suspect profile and you guessed it. It's a vampire. Now, why would they send you - a humble police station database manager - to such a mission? Well, you're the only nerd in the police station interested enough in all this vampiric stuff. Like, remember how you wore a cape and fake fangs in middle school? Or tried to sue Twilight Saga for false depiction? Anyhow, now you are a detective. You gotta find Grand Vampire and bring justice. Good luck!";

[1.Introduction]

The New Volterra - City Centre is a room. The description is "The City of New Volterra is a, heh, lively metropolitan area inhabited by both people and nightfolk. Nightfolk include vampires, werewolves, ghouls, and many others. Like any other bigger city, New Volterra has its troubles such as the rise of dark magic, criminal organizations, and corruption. Other than that, it's a lovely place enriched with various cultures. The City Centre consists of a Main square surrounded by shops and many other businesses. A beautiful gothic fountain is the centerpiece of this square, and north of it lies The City Council building. As a young detective from down south, you begin to feel a bit overwhelmed."

Understand "go to [any room]" as teleporting.
Teleporting is an action applying to one visible thing.

Carry out teleporting:
	if the player does not carry the teleportation stone:
		say "You need the teleportation stone to teleport!";
	otherwise if the noun is a room:
		move the player to the noun;
		say "The teleportation stone glows, and the world blurs. When your vision clears, you find yourself in [the noun].";
	otherwise:
		say "That's not a place you can teleport to.";



The clock is number that varies. The clock  is 0.  
The turn counter is a number that varies. The turn counter is 0.

Every turn:
	increase the turn counter by 1;
	if the turn counter is 9:
		if the clock  is 0:
			now the clock is 1;
			say "The sun sets, and the city grows mystic as night falls.";
		otherwise:
			now the clock  is 0;
			say "The sun rises, and the city starts to stir again.";
		now the turn counter is 0;  

A clue is a kind of thing. A clue can be noted or unnoted. A clue is usually unnoted.
Player carries a notebook.
After taking a clue:
	say "You jot down the details of '[the printed name]' in your notebook.";
	now the noun is noted.

Instead of examining the notebook:
	say "You review your notes:";
	if a clue is noted:
		repeat with found clue running through clues:
			if found clue is noted:
				say "[The printed name of the found clue]: [the description of the found clue][line break]";
	otherwise:
		say "You haven't written down any clues yet.";
		
Feeding onions is an action applying to one visible thing. Understand "feed
[someone] with onions" as feeding onions.
		
A vampire is a kind of person.
A vampire has a number called damage. 

A person can be alive or dead. A person is usually alive

A vampire can be alive or dead. A person is usually alive

Instead of examining the vampire when the clock is 0:
	say "[description]";

Instead of examining the vampire when the clock is 1:
	say "Mhm, yep, that's a vampire.";
	
[2.The Darkside]

The Slums are south of The New Volterra - City Centre. The description is "Poor side of the town. Streets are crowded with various folk. Merchants are selling all kinds of things. There are a couple of bars, as well. The entire area smells a bit stringe. Not like spices or anything such, just a weird moist smell. You can see people dressed in all sorts of traditional clothing - from Leiderhosen to Kimonos. You can also see vampires dressed in leather suits and Victorian era attire. You are mersmerized by them. You envy them, even."

Beggar is a man in The Slums. The description is "Poor thing, looks like he hasn't eaten a thing in a while. Maybe I should offer to feed him something?"

Photograph is a clue in The Slums. It is undescribed.

Park bench is here. It is scenery.

Instead of asking the Beggar about 	"food":
	say "I would kill for some onions. Please, onions.";

Instead of feeding onions:
	if the noun is the Beggar:
		say "You feed [the noun] with Onions. He is devouring them like apples.'I haven't eaten this good since the vampires held me hostage in the Nest. Can you belive that they tried to feast of off me?' He speaks with his mouth full. 'Here look at this photo of me in the nest. My pal Gregory and I were once on the mission to destroy him but nobody believes me.'";
		now Photograph is described;
		now the player has Photograph;
	otherwise:
		say "You try feeding [the noun] with Onions, but they stare at you puzzled."
		
Instead of examining Photograph:
	if the player carries Photograph:
		say "A strange photo of this man standing next to nothing? I guess vampires are not visible in the photos, huh. On the back it says - Noctrunal Grog still loves his blood pudding.";
	otherwise:
		say "You are not allowed to see this until do one act of kindness.";
	
Market is west of The Slums. The description is "Lively area filled with vendors, traveling merchants selling various knicknacks, snake oils and artefacts. Some of this stuff may be stolen but you are not in theft department."

Hells Bells is east of The Slums. The description is "A pub that welcomes nightfolk and all of the others. Some loud death metal music playing. It smells like cigarettes, alcohol and some illegal substances. It has been rumored however that this place serves some speciality coffee and croissants from time to time."

The Secret Room is a room. "This is some sort of an archive."

A shiny scroll is a clue. The description is "If you wish to become a creature of the night, you shall come to me mortal and I shall grant you your wish. Come to my nest, little bird. Fear me not." Shiny scroll is in Secret Room.



The wooden door is a door. It is east of Hells Bells and west of the Secret Room. The wooden door is closed and locked.

The vault key is a thing. The vault key is in Hells Bells. The vault key is undescribed.

Patrik Noah is a man in Hells Bells. The description is "A quriky bartender working in the pub. He collects gossip and rumours."

Table of Patrik Noah's Responses
Topic	Response
"city"	"'I actually come from the Midwest, believe it or not.'"
"vampires"	"'Aw man they are cool, sometimes they gather in my pub and order Bloody Marys - extra blood.' Patrik winks and hands you a small rusty key. 'You might need this.' he says."
"himself"	"'Don't know, guess I am really passionate about cocktails, tattoos and computers. Ever heard of this band - King Gizzard? They are so cool. ' Patrik yapps."
"croissant"	"Oh...I think have mistaken this place for Belle's Helle on the upper east side of the town. We only serve beer here."
"beer"	"Drinking on duty? I don't think so."

Instead of asking Patrik Noah about something:
	repeat through the Table of Patrik Noah's Responses:
		if the topic understood matches the topic entry:
			say the response entry;
			if the topic understood is "vampires" and the vault key is undescribed:
				now the vault key is described;
				now the player has the vault key;  
			stop the action;
	say "'I don't have much to say about that,' Patrik says."

Instead of examining the vault key:
	say "The vault key looks rusty and small, definitely important for unlocking something."

	
Instead of unlocking the wooden door with the vault key:
	if the player carries the vault key:
		say "Eeek, the wooden door unlocks.";
		now the wooden door is unlocked;
	else:
		say "You don't have the key to unlock the door."

	
Isidora is a vampire in Hells Bells. The description is "Strangely attractive woman with black hair and red eyes."


Instead of asking Isidora about something:
	say "[one of]'Leave me alone, mortal.'[or]'Stop bothering me.'[or]'Mortals can be so annoying.'[stopping]";
	

Cecilia is a vampire in Market. The description is "A mysterious figure in long black dress and big sunglasses."

Gaiman is a man in Market. The description is "Short and fat man that sells a variety of things. You can buy something from him by asking him about merch"

Gaiman Menu is a truth state that varies. Gaiman Menu is false.

The onions are in the Market. The description of the onions is "A bag of pungent onions, perfect for your next recipe.".
The Book of The Undead is in the Market. The description of the Book of The Undead is "A dusty, ancient tome filled with dark secrets such as the one that vampires can be killed using both garlic and gun combo.".
The Blood Pudding is in the Market. It is edible. The description of the Blood Pudding is "A strange dish made with blood, it smells oddly appetizing. Who would eat this.".

Table of Gaiman's Responses
Topic	Response
"Vampires"	"'All I know that there is one they call King and that I try to stay away from them.'"
"Merch"	"'Damn right I got merch. Buy your heart out kid.'"

Instead of asking Gaiman about something:
	repeat through the Table of Gaiman's Responses:
		if the topic understood matches the topic entry:
			say the response entry;
			if the topic understood matches "Merch":
				now Gaiman Menu is true;  
			stop the action;
	say "'...'"

Every turn when Gaiman Menu is true:
	say "'No haggling..'";
	say "1. 'Onions'[line break]2. 'Book of The Undead'[line break]3. 'Blood Pudding'";
	now Victor Menu is false;  
	
After reading a command when Gaiman Menu is true: 
	if the clock is 1:
		say "Market is closed at night.";
		now Gaiman Menu is false;
		stop the action;  
	otherwise:
		if the player's command matches "1":
			say "Good choice!";
			now Gaiman Menu is false;  
			now the player carries the onions;  
			stop the action;
		if the player's command matches "2":
			say "Odd one, huh?";
			now Gaiman Menu is false;  
			now the player carries the Book of The Undead;  
			stop the action;
		if the player's command matches "3":
			say "That's nasty but there you go";
			now Gaiman Menu is false;  
			now the player carries the Blood Pudding;
			stop the action;


[3.Streets of Volterra]



The note is in the The New Volterra - City Centre. The description is "Find Victor. He will give you directions and provide you with equipment. His shop is in City Centre. Info: Victor Volturi, West City Centre 45, NV - Redd"

After taking the note:
	say "You slip the note into your pocket."

Rule for printing the name of the note while taking inventory:
	say "note 1".
	

Morgana is a woman. Morgana is in The New Volterra - City Centre. The description is "A tall and muscular woman with red hair and bunch of tattoos. Dressed in all black with platform boots that make her even taller. Phew!"

Table of Morgana's Responses
Topic	Response
"city"	"'I was born and raised here. Attending art school currently.'"
"vampires"	"'We don't see them much as they usually stay in Bloodless Nest. At least their elite.'"
"Victor"	"'Morgana: There's 50 million citizens here and you ask me about some Victor? Geez, might as well drop a needle in the hay'"
"Victor Volturi"	"'Morgana: Right, he collabs with the cops. A traitor if you ask me! '"
"gym routine" 	"'Are you hittin' on me?'"

Instead of asking Morgana about something:
	repeat through the Table of Morgana's Responses:
		if the topic understood matches the topic entry:
			say the response entry;
			stop the action;
	say "'I don't have much to say about that,' Morgana grunts."

Sigmund is a man. Sigmund is in The New Volterra - City Centre. The description is "Thin and pale young man with dark eyes. His cheeks are almost hollow and look very sharp. His hair is buzzed. He has a septum piercing." Sigmund carries the teleportation stone.


Instead of asking Morgana about "Victor", say "Morgana: There's 50 million citizens here and you ask me about some Victor? Geez, might as well drop a needle in the hay."

Instead of asking Morgana about "Victor Volturi", say "Morgana: Right, he collabs with the cops. A traitor if you ask me! "

Instead of asking Sigmund about "Victor", say "Victor: Yeah, he's right 'round this corner - westside. But watch out he is, like, weird and stuff."

Instead of asking Sigmund about "Vampires":
	if the player does not carry the teleportation stone:
		say "Victor whispers: 'You going to the Nest? As a friend, let me give you a little something.' He hands you a crystal.";
		now the player carries the teleportation stone;
	otherwise:
		say "Victor says: 'I already gave you what you need. Good luck out there.'"

[4. Victor's Workshop]

Victor's workshop is west of The New Volterra - City Centre. The description is "Victor is an engineer. He makes weapons and various other tools used by police and military. It's rumored that he also pracitces some kind of magic, but you are not the one to fall for rumors, are you? The workshop reeks of garlic and rust. It does have a certain feeling of coziness to it."
Victor Volturi is a man. Victor Volturi is in Victor's workshop. The description is "Short and fat man with greasy dark hair. He is wearing some kind of weird goggles."
Instead of answering Victor Volturi that "Greetings":
	say "'Who sent you here kid?' Victor asks."

Instead of giving the note to Victor Volturi:
	say "Victor takes the note and reads it. He points his finger up and then left. It's pointing to a chest";
	remove the note from play.
	
Victor Menu is a truth state that varies. Victor Menu is false.
The workshop key is a thing in Victor's workshop. The description of the workshop key is "A rusty key. That you payed 20 bucks for. 20 bucks for rusty key."
The chest is a locked container in Victor's workshop. The description of a chest is "A massive wooden chest. God knows what's in it."
A garlic is in the Chest. The description of the garlic is "A bunch of garlic tied around a wooden stake."

Instead of unlocking the Chest with the workshop key:
	if the player does not have the workshop key:
		say "You need a key to unlock the chest.";
	otherwise:
		now the Chest is unlocked;
		say "You insert the key into the lock and turn it. The chest is now unlocked.";
Instead of opening the Chest when the Chest is unlocked:
	move the garlic to the player;
	now the Chest is closed;
	now the Chest is locked;
	say "You open the chest and find a something inside. You take the grab and close the chest again.";

Instead of opening the Chest when the Chest is locked:
	say "The chest is locked. You can't open it without the key.";

Table of Victor Volturi's Responses
Topic	Response
"weapons"	"'I have been crafting guns, swords, daggers, cannons and buncha other knicknacks for over 90 years now using only the finest materials there are.'"
"chest"	"'That chest over there? It contains some of my finest creations. But only those with the right key can open it.'"
"key"	"'20 bucks, take it or leave it.'"
"garlic"	"'You fighting vampires, aren't you? You might need something to shield yourself with.'"
"garlic bread" 	"'My lovely wife baked some this morning. It's delicious. Help yourself!'"
"gun"	"'Take it. It's made for you. Your boss payed me up front.'"

Instead of asking Victor Volturi about something:
	repeat through the Table of Victor Volturi's Responses:
		if the topic understood matches the topic entry:
			say the response entry;
			if the topic understood matches "key":
				now Victor Menu is true;  
			stop the action;
	say "'I don't have much to say about that,' Victor grumbles, returning to his work."

Every turn when Victor Menu is true:
	say "'What do you want to do next?'";
	say "1. 'Pay the $20 and buy the key.'[line break]2. 'Try to haggle.'[line break]3. 'Never mind.'";
	now Victor Menu is false;  

After reading a command when Victor Menu is false:
	if the player's command matches "1":
		say "Victor takes the $20 and hands you a rusty key. 'Good choice,' he says.";
		now the player has the workshop key;
		now Victor Menu is false;  
		stop the action;
	if the player's command matches "2":
		say "Victor frowns. 'No haggling. 20 bucks, take it or leave it.'";
		now Victor Menu is true;  
		stop the action;
	if the player's command matches "3":
		say "Victor shrugs and goes back to work.";
		now Victor Menu is false;  
		stop the action.

Garlic bread is a clue in Victor's workshop. The description is "Vampires don't really like garlic – must suck if they are Italian." 
A weapon is a kind of thing. A weapon has a number called the damage. The damage of a weapon is usually 0. A weapon can be broken or unbroken. A weapon is usually unbroken.
The gun is a weapon in Victor's workshop. The description is "A shiny revolver that uses silver bullets  and deals 6 damage- Van Hellsing style." 



[5. The Bloodless Nest]

The Bloodless Nest is east of The New Volterra - City Centre. "You step into a dimly lit chamber with stone walls covered in carvings. Faint whispers echo through the halls, and the air smells of iron and decay. It's hard to shake the feeling that you're being watched."

The East Wing is east of the Bloodless Nest. "The East Wing is a narrow corridor with flickering torches casting long shadows. You see several ornate doors along the walls, some ajar, revealing what looks like storage rooms."

The West Wing is west of the Bloodless Nest. "The West Wing is a wide hallway with a vaulted ceiling and stained-glass windows that let in pale moonlight. At the end of the hall, a locked iron door catches your attention."

The Throne Room is a room. "A grand chamber with high ceilings and a sense of foreboding. At the center, seated on a dark, ornate throne, is the Grand Vampire himself, his presence dominating the space."

The Iron Door is a door. The Iron Door is west of the Throne Room and south of the West Wing. The Iron Door is locked. The description of the Iron Door is "An imposing iron door with intricate carvings and a faint magical aura. It seems to require some sort of key to open."



The Iron Door can be unlocked with the card. Instead of unlocking the Iron Door with the card:
	say "You slide the card through a hidden slot in the door. With a low rumble, the Iron Door creaks open, revealing the Throne Room.";
	now the Iron Door is unlocked.
	
Check going through the Iron Door:
	let noted clues count be the number of noted clues carried by the player;
	if noted clues count is less than 5:
		say "You feel unprepared to face the Grand Vampire. Perhaps you should gather more evidence before proceeding.";
		stop the action.


Grog is a vampire. He is in the East Wing. The description is "Hideous creature - Sunken eyes, and slimey pale skin. His entire existance yearns for some blood.". Grog carries a card.

Instead of giving The Blood Pudding to Grog:
	say "His eyes lit. He disgustingly eats the blood pudding with his bare hands. A card falls to the floor from his cloak. You swiftly take it. ";
	now the player carries the card.
	

	
Instead of asking Grog about "King":
	say "I have been a servant to my King for the past 348 years. For centuries he searched for a place to settle and then he ran into this. He has made a home for all of us."

Instead of asking Grog about "blood bank":
	say "All the blood banks in this city have put Vampire Proof doors so we can't come in. The blood bank in your town is the only one they invited us in. If you ask me, a total violation of security."




The blood sample is a clue. The description is "Could easily be connected to the crimes. Why does it look so...tasty?" It is in the East Wing.

The torn document is a clue. The description is "A fragment of parchment with faded writing in a strange language. But I can feel it calling me." It is in the West Wing.

The mirror is a clue. The description is "I look unrecognizable." It is in the Bloodless Nest.

The Grand Vampire is a vampire. The Grand Vampire is alive. The Grand Vampire is in the Throne Room. The description is "The King of all Vampires. His presence is frightening and dark but there is something calling you to him...You must resist it. Remember - you are a detective. Forget about your foolish fantasies of becoming a vampire. Be honorable. Do the right thing...For yourself?"


Vampire Menu is a truth state that varies. Vampire Menu is false.

Table of Grand Vampire's Responses
Topic	Response
"blood bank"	"'YOU ARRRE AWARRRE THAT... MY KIND MUST EATTTT...' The room shakes with his voice."
"crimes"	"'I COMMITTTED NO CRRRRRIME... MY SERRRVANTS HUNT FORRR ME.'"
"servants"	"'THOSE TO WHOM I GRRRRANT ETERRRRNAL LIFE.'"
"eternal life"	"'DO YOU WISH TO LIVE IT?'"


Instead of asking Grand Vampire about something:
	repeat through the Table of Grand Vampire's Responses:
		if the topic understood matches the topic entry:
			say the response entry;
			if the topic understood matches "eternal life":
				now Vampire Menu is true;  
			stop the action;
	say "'...'"

Every turn when Vampire Menu is true:
	say "'The choice is yours, kid.'";
	say "4. 'Become a vampire.'[line break]5. 'Bring justice - Kill him.'[line break]6. 'Do nothing.'";
	now Vampire Menu is false;  

After reading a command when Vampire Menu is false:
	if the player's command matches "4":
		end the story finally saying "You have chosen to join the Bloodless Nest. Come to me little bird. Your blood is now belongs to the night.";
		now Vampire Menu is false;  
		stop the action;
	if the player's command matches "5":
		say "YOU DARRREEE TO OPPOSSEEE ME?'";
		now Vampire Menu is false;  
		stop the action;
	if the player's command matches "6":
		say "....";
		now Vampire Menu is false;  
		stop the action.


To kill (target - a visible thing):
	if the target is not a vampire:
		say "You can only kill vampires.";
	otherwise:
		if the target is dead:
			say "That target is already dead.";
		otherwise:
			now the target is dead;
			say "You strike down [the target], killing it instantly!";

Instead of attacking the Grand Vampire:
	if the player does not have the gun or the player does not have the garlic:
		say "You need both a gun and garlic to kill the grand vampire!";
	otherwise if the clock is 0:
		say "You can only kill the grand vampire at night.";
	otherwise:
		kill the Grand Vampire;
		end the story finally saying "You did it. You really killed him. Your journey ends here and you are free to go back home. Cheif will reward you handsomely.";
		
		


		



