"The Adventures of Teacup," by Robert Haddon.

Book 1 - Crumble and Rumble

The story genre is "Fairy Tale". The release number is 0.  The story headline is "Story time for Teira".  The story description is "In this Teacup adventure, our foxy hero finds herself trapped within a locked room!  How did she get here, and where is her best friend Ralph the wolf?  It is up to you to help Teacup come to the bottom of this mystery."  The story creation year is 2014.

Include Secret Doors by Andrew Owen.
Include Simple Followers by Emily Short.

Release along with cover art.

Use full-length room descriptions, American dialect, no scoring, and the serial comma.

Persuasion rule for asking people to try following something: persuasion succeeds. Persuasion rule for asking people to try ceasing to follow something: persuasion succeeds.

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

When play begins, say "You are Teacup, an unusually bright and clever fox from Foxtown.  Get ready for your next adventure!"

Chapter 1 - Waking Up

Instead of looking for the first time:
	if turn count is 1
	begin;
		say "You groan and rub open your eyes with both paws.   You discover that you are lying near a warm and furry lump in the corner of a strange room.  You have no idea how you got here or even where 'here' is.";
		say line break;
		say "Your last memory is of  Ralph and you starting an investigation at an old building at the edge of Foxtown.  Speaking of Ralph, where is he?";
		say line break;
		say "You stand up and brush yourself off.  Satisfied that you have no broken bones or open wounds, it's time to find Ralph and figure out what's happening!";
	end if.
	
Instead of talking to Ralph:
say "[one of]'Quite a sticky situation we're in,' you say conversationally.[paragraph break]'Yep, but we've been in tougher ones' he replies casually.[or]'Remember that deal with the hippos and the alligators?' you ask.[paragraph break]'That was a rough one, for sure,' Ralph responds, scratching the fur under his collar.[or]'I've been meaning to ask you about your new collar,' you comment. 'Where did you get it?'[paragraph break]'My mum gave it to me for Christmas last year,' Ralph replies, inspecting his fore paws.[or]'It looks good with your fur color' you say politely. [paragraph break]Ralph laughs heartily. 'All the cool pups are wearing them you know.'[or]You decide to concentrate on your situation instead of talking further with Ralph right now.[stopping]".

A fox is a kind of animal.  The player is female.
The description of the player is "You're normally a cute little fox, but right now you look rather stinky.  When this is all over, there will be lots of licking to clean yourself up.".

Small Room is a room. "This is a small room with no windows.  It is dimly lit from a grubby ceiling lamp high above your head and shines down on a [if trap door is revealed]trap door[otherwise]dirty rug[end if] in the middle of the floor.  A doorway to the east is completely filled with a pile of rubble."

The Cellar is a room. "It is cold and damp here, there is just enough light coming from the room above to see that you are in a stone-walled cellar with exits to the north and south.  An odd fungus is growing all around.  This place looks ancient, possibly unused for centuries."

The odd fungus is scenery in the Cellar.  "Slimey stuff, for sure.  It looks like you could scrap some off."

The green fungus is an edible thing.  Understand "green" and "fungus" as the green fungus.

The rotting crates are in the Old Storage Area. "There are some ancient storage crates here."  The description is "Made from the wood of trees that have long since died or were chopped down.  You think even a sneeze could destroy them."

The Old Storage Area is a dark room.  It is north of the Cellar. "[if location of the rotting crates is the Old Storage Area]The stone-walled tunnel ends here, in what looks like an old storage area, based on the rotting crates lying about.[otherwise]The stone-walled tunnel end here, in this now empty old storage area.[end if]".  The glowing fungus is here.  The glowing fungus is lit and edible.

The Cave-In is a dark room.  It is south of the Cellar.  "It is hard to say how far south the old stone-walled tunnel once led, because at the south end of the room the roof has collapsed, making the way now impassible.  Your hackles are rising:  you sense danger here!" The peanut is here.  The peanut is edible.

The trap door is below the Small Room and above the Cellar.  The trap door is a secret door.  "It looks like it was well-made when it was new, but it doesn't seem to have been used for many years."  Understand "trap" as the trap door.

The pile of rubble is scenery in the Small Room.  "This is a pile of cement chunks and heavy bits of debris that rise all the way to the ceiling.  There's no way you can get through it.".

Digging is an action applying to one visible thing and requiring light.  Understand "dig [rubble]" as digging.

The ceiling lamp is scenery in the Small Room.  "It looks old and hasn't been cleaned in years, but at least it works.  How much worse would it have been to wake up in total darkness?"

The dirty rug is fixed in place in the Small Room.  "[if the trap door is revealed]The dirty rug has been moved to one side of the room.  You don't want to touch it anymore.[otherwise]A dirty rug lies in the center of the room.  It's horrible looking and probably much worse to touch.  It looks quite thick and heavy, though with some help you could probably move it.".  Understand "filthy" and "dirty" as the rug.

The desk is in the Small Room.  "A rickety wooden desk with a single drawer sits in the northwest corner of the room."  The desk is fixed in place.
The drawer is a part of the desk.  The drawer is an openable closed container.  In the drawer is a leather bound book.

A lump is in the Small Room. "The lump that you were lying near is here, moving up and down very slightly.  It might be alive!"  The lump is fixed in place.  Understand "warm" and "furry" as the lump.

A wolf is a kind of animal. Ralph is a male wolf.  "Ralph is here beside you, ready to follow your lead."  Understand "friend" and "wolf" as Ralph.  Ralph is in the lump.  Ralph is wearing a blue collar.  The description of the blue collar is "This is no cheap PetSmart dog collar;  it looks pretty fancy with its blue leather strap studded with silver and a golden buckle."

The Unstable Area is a region.  The Cellar and Cave-In are in the Unstable Area.
[Instead of listening in the Small Room, say "The song of gulls."]
[Instead of listening in the Cave-In, say "Pooh."]

[When in the Unstable Area, say "You don't need sharp fox ears to hear this shti."]

Instead of pushing or pulling the pile of rubble for the first time:
	if Ralph is in the Small Room:
		say "Even with Ralph's help, it's just no use: the rubble is too heavy and there's too much of it.";
	otherwise:
		say "It's just no use: the rubble is too heavy and there's too much of it.".

Instead of attacking or digging the pile of rubble for the first time:
	if Ralph is in the Small Room:
		say "Ralph watches as you attack the rubble with gusto!  Unfortunately, you're not accomplishing anything except getting sore paws.";
		say "Ralph says 'I had a feeling that wasn't going to work.  We need to find another way out.'";
	otherwise:
		say "You attack the rubble with gusto and only achieve sore paws.  There's no hope of getting through  that pile.".	

Instead of attacking, digging, pushing, or pulling the rubble:
	say "Nope.  You're better off getting your daily exercise by some other means."

Instead of opening the trap door for the first time:
	say "You and Ralph put your backs into and apply all of your combined canine power.  There is a loud snapping sound as rusted metal and old wood give way, causing the door to fly open and you and Ralph to tumble over backwards.";
	say "The trap door is now open!";
	now the trap door is open.

Before examining the book:
	if player does not have the book:
		say "(first taking the book)";
		now the player has the book;
	
Instead of examining the book:
	say "This is a beautiful leather bound book entitled 'The Adventures of Teacup, Episode 1'.";
	say "You flip to the first page and start reading: 'You are Teacup, an unusually bright and clever fox from Foxtown...'";
	say "[paragraph break]";
	say "Before you can read further, a voice speaks out of nowhere and scolds you for cheating!";
	say "The book vanishes into thin air!";
	if Ralph is in the Small Room:
		say "[paragraph break]";
		say "Ralph shrugs 'Well, it was worth a try.'";
	remove the book from play.

Instead of taking the rug:
	say "The rug is too large and heavy to pickup, not to mention filthy.".

Before pushing or pulling the rug:
	if the trap door is revealed:
		say "You've already moved the filthy rug once.  It's so gross you don't want to touch it any more.";
		rule fails;
	if Ralph is in the Small Room:
		say "Your snouts wrinkling in disgust, with Ralph's help you manage to slide the rug off to one side, leaving a trail of dirt and revealing a trap door in the floor!";
		now the trap door is revealed;
		rule fails;
	otherwise:
		say "It's no use; the rug is too heavy and grimy to move it by yourself.";
		rule fails.

Every turn when Ralph is in the lump:
	if Ralph has been in the lump for less than 2 turns:
		say "A low, muffled sound is coming from the lump.";
	otherwise if Ralph has been in the lump for more than 2 turns:
		say "The lump is nagging at your brain now, you should really check it out.";
	otherwise:
		say "The lump looks strangely familiar to you now, and continues to make a low sound.".

Instead of examining, pushing, pulling, or taking the lump:
	say "Looking closer at the lump, you realize it is your best friend Ralph curled up asleep!  You wake him up and he slowly comes around.";
	say "'Thank you, Teacup!' Ralph says. 'What happened to us?  I don't remember anything.'";
	now Ralph is in the Small Room;
	now Ralph is shadowing the player;
	remove lump from play.
	
Instead of examining Ralph:
	if Ralph is in the lump:
		say "Where is Ralph?  It would be great if your best friend were here to help you.";
	otherwise:
		say "Ralph is a young wolf with light gray fur and wearing a blue collar.  He's been your friend and trusty companion with you on more adventures than you can count on with all four paws.".

Instead of eating the peanut:
	say "You eat the peanut, shell and all.  Most folks just eat the inside part.";
	remove peanut from play.

The secret note is a thing.  The description of the secret note is "It reads: THEPOO".

Instead of attacking the peanut:
	say "You crack open the shell and find a note inside!";
	now Player has the secret note;
	remove peanut from play.

Instead of eating the green fungus:
	end the story finally saying "Didn't your parents ever warn you about eating unknown fungi?  You should have listened to them more carefully, because your experience with eating [the noun] does not go well.[paragraph break]The horrible taste of the stuff was not the worst part.  The hours of painful stomach cramps and hallucinations also were not the worst part.  The worst part was definitely when your head melted and you died.[paragraph break]Ralph was smart enough not to eat [the noun], but not smart enough to escape this place without your help.  So he died a few days after you did, lonely and miserable."
	
Instead of taking the odd fungus for the first time:
	say "You scrap some of the stuff from a crack between two stones on a wall.  It looks greenish and unhealthy.";
	now player has the green fungus.

Instead of taking the odd fungus:
	say "You spend some time scraping your claws in the cracks between the stones but you fail to get enough to hold on to.".

Instead of the player eating the glowing fungus:
	say "You plop [the noun] into your mouth, chew, and swallow.  Not too bad, surprisingly.[paragraph break]'That certainly wasn't your brightest idea,' Ralph quips.";
	remove glowing fungus from play.
	
Instead of giving anything to Ralph:
	if the noun is the peanut:
		say "Ralph thanks you and 'wolfs' down [the noun].";
		remove the noun from play;
	otherwise:
		say "Ralph politely declines your offer to poison him.".

Instead of throwing anything at Ralph:
	say "
	[one of]Like a furball ninja, Ralph easily dodges [the noun], where it falls harmlessly to the ground.
	[or][The noun] completely misses.  Ralph looks at you with a raised eyebrow.
	[or]Quick as a fox, or a wolf, rather, Ralph bats [the noun] back in your direction and it hits you in the face!
	[or]Ralph says 'Is that really the best way for us to get out of this trap?'
	[at random]";
	now the noun is in the location.
		
Instead of taking, attacking, or entering the rotting crates:
	say "They crumble to dust at the slightest touch.";
	remove the rotting crates from play.
	
The Earthquake is a scene.  Earthquake begins when Ralph is in the Cave-In.  Earthquake ends when the player has the peanut.

When Earthquake begins:
	say "'Teacup, listen!  Can you hear that low rumbling sound?  Let's get out of here, now!' Ralph implores you.".
	
When Earthquake ends:
	say "[bold type]Boooooom!!![roman type]";
	say line break;
	say "The whole room begins to shake violently!  You can't tell if it is an earthquake or if a bomb has gone off somewhere near by, but you have no time to think about it as the floor on which you and Ralph are standing suddenly collapses!  You slip off your feet and tumble into a huge crack that has opened underneath you.";
	let L be the list of things carried by the player;
	say "[line break]";
	say "During your tumble, you dropped everything you were carrying!";
	repeat with cave_item running through L:
		now cave_item is in the Dining Hall.
	
Chapter 2 - The Bunny Men

The Dining Hall is a dark room.  "This is an elloborately decorated room with rich wood paneling on the walls and a large wooden table in the middle surrounded by fancy chairs.  The west end of the room is a mess of debris from the recent disaster, covering half the table and some of the chairs.  Hanging from the ceiling is an iron chandalier, providing light. There are doorways leading north and east."

The Kitchen is a room.  It is north of the Dining Hall.
The Grassy Room is a room.  It is east of the Dining Hall.

The Iron Chandalier is scenery in the Dining Hall.  It is lit.  "It is a large band of iron suspended from the ceiling by fancy chains and holds several candles which light up the room."  The Iron Chandalier holds the candles.  The candles are fixed in place.

A table is a kind of supporter.  A table is always enterable.
A chair is a kind of supporter.  A chair is always enterable.  
The Large Wooden Table is a table.  It is scenery in the Dining Hall.  "It appears to be made of oak and looks fit to serve royalty."
The Wooden Chairs are chairs.  They are scenery in the Dining Hall.  "The wooden chairs match the table and look like something you would find in a palace."  Understand "chair" as the Wooden Chairs.

Instead of taking the candles, say "They are way out of your reach, even if you stood on the table."

Settling Dust is a scene.  Settling Dust begins when Earthquake ends.  Settling Dust ends when the player has been in the Dining Hall for two turns.

When Settling Dust begins:
	say "Your ears are ringing and thick falling dust prevents you from seeing anything.";
	say "[line break]";
	now the Iron Chandalier is unlit;
	now the glowing fungus is unlit;
	now the player is in the Dining Hall;
	now Ralph is in the Dining Hall.
	
When Settling Dust ends:
	say "The dust finally settles enough for you to see where you are.";
	now the Iron Chandalier is lit;
	now the glowing fungus is lit.
	
	