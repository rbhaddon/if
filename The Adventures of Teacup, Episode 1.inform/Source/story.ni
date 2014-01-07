"The Adventures of Teacup, Episode 1" by Robert Haddon.

The story genre is "Fairy Tale". The release number is 0.  The story headline is "Story time for Teira".  The story description is "In this Teacup adventure, our foxy hero finds herself trapped within a locked room!  How did she get here, and where is her best friend Ralph the wolf?  It is up to you to help Teacup come to the bottom of this mystery."  The story creation year is 2014.

Include Secret Doors by Andrew Owen.
Include Simple Followers by Emily Short.

Release along with cover art.

Use full-length room descriptions, American dialect, no scoring, and the serial comma.

When play begins, say "You are Teacup, an unusually bright and clever fox from Foxtown.

You groan and rub open your eyes with both paws.   You discover that you are lying near a warm and furry lump in the corner of a strange room.  You have no idea how you got here or even where 'here' is.  It's time to find some answers, Teacup!"

Chapter 1 - Waking Up

Persuasion rule for asking people to try following something: persuasion succeeds. Persuasion rule for asking people to try ceasing to follow something: persuasion succeeds.

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.Check talking to: say "[The noun] doesn't reply."Instead of talking to Ralph:say "[one of]'Quite a sticky situation we're in,' you say conversationally.[paragraph break]'Yep, but we've been in tougher ones' he replies casually.[or]'Remember that deal with the hippos and the alligators?' you ask.[paragraph break]'That was a rough one, for sure,' Ralph responds, scratching the fur under his collar.[or]'I've been meaning to ask you about your new collar,' you comment. 'Where did you get it?'[paragraph break]'My mum gave it to me for Christmas last year,' Ralph replies, inspecting his fore paws.[or]'It looks good with your fur color' you say politely. [paragraph break]Ralph laughs heartily. 'All the cool pups are wearing them you know.'[or]You decide to concentrate on your situation instead of talking further with Ralph right now.[stopping]".

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
	say "They crumble to dust and your barest touch.";
	remove the rotting crates from play.
	
Instead of going from the Cellar to the Cave-In for the first time:
	try going south;
	say "'I don't like it here, Teacup,' Ralph informs you.".
	
Every turn when the player is in the Cave-In:
	if the player has been in the Cave-In for 2 turns:
		say "Your presence in this area is too much for the fragile ".
		