"The Adventures of Teacup" by Robert Haddon.

Book 1 - Crumble and Rumble

The story genre is "Fairy Tale". The release number is 0.  The story headline is "Story time for Teira".  The story description is "In this Teacup adventure, our foxy hero finds herself trapped within a locked room!  How did she get here, and where is her best friend Ralph the wolf?  It is up to you to help Teacup come to the bottom of this mystery."  The story creation year is 2014.

Include Secret Doors by Andrew Owen.
Include Simple Followers by Emily Short.

Release along with cover art.

Use full-length room descriptions, American dialect, no scoring, and the serial comma.

[Persuasion rule for asking Ralph to try following something: persuasion succeeds. 
Persuasion rule for asking Ralph to try ceasing to follow something: persuasion succeeds.]
Persuasion rule for giving something to Ralph: persuasion succeeds.
Persuasion rule for asking Ralph to try taking something: persuasion succeeds.
Persuasion rule for asking Ralph to try doing something: persuasion succeeds.

A room can be fertile or infertile.  A room is usually infertile.
A switch is a kind of thing.
Switched state is a kind of value.  The switched states are turned on and turned off.  A switch has a switched state.  A switch is usually turned off.

A cage is a kind of container.  A cage is usually locked.  A cage is fixed in place. A cage is always transparent.  A cage has some text called the plaque.

Understand "grind [something]" and "pulverize [something]" as attacking.  

Furniture is a kind of supporter.  Furniture is usually enterable.  A table is a kind of furniture.  A chair is a kind of furniture.

Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

Food is a kind of thing.  Food is always edible.

Fungus is a kind of food.  A fungus can be juvenile or mature.  A fungus can be planted or loose.  A fungus is usually mature and loose.

Toxicity is a kind of value.  The toxicities are safe and poisonous.  Food has a toxicity.  Food is usually safe.

A sapling is a kind of thing.  A sapling can be planted or loose.  A sapling is usually planted.

A gardening tool is a kind of thing.

Planting is an action applying to one thing.  Understand "plant [something]" as planting.
Check planting: say "[The noun] is not something you can plant.".

[Planting it with is an action applying to two visible things and requiring light. ]
Planting it with is an action applying to two things.  Understand "plant [something] with [something]", "bury [something] with [something]", "cultivate [something] with [something]" as planting it with.

Rule for writing a paragraph about the mature planted glowing mushroom:
	say "A glowing mushroom is planted here; it looks full grown now.".
Rule for writing a paragraph about the juvenile planted glowing mushroom:
	say "A small glowing mushroom is planted here; it is still growing.".
Rule for writing a paragraph about the loose glowing mushroom:
	say "A glowing mushroom is here.".
Rule for writing a paragraph about the mature planted green slime:
	say "The disgusting green slime is transformed into something truly horrible.  Beware!".
Rule for writing a paragraph about the juvenile planted green slime:
	say "Putrid green slime is spreading like a disease here!".
	
Instead of examining fungus:
	say "[if the noun is planted][The noun] is planted in the ground; there's not much to see.[else]You see nothing special about [the noun].[end if]".	

glowing_mushroom_latch is a text variable.
green_slime_latch is a text variable.
glowing_mushroom_latch is "not ready".
green_slime_latch is "not ready".
slime_is_attacking is a text variable.
slime_is_attacking is "false".

Every turn:
	follow the fungus growth rules;
	follow the terrible slime rules.
	
The fungus growth rules is a rulebook.

A fungus growth rule:
	repeat with item running through planted fungus:
		if the location of the item is dark:
			if the item is the glowing mushroom:
				if glowing_mushroom_latch is "not ready":
					say "[if Ralph is in the location]'That should help [the list of planted fungus] grow,' Ralph tells you.[else]'You think this will allow [the list of planted fungus] to grow.'[end if]";
					now glowing_mushroom_latch is "ready";
					the glowing mushroom grows in two turns from now;
			if the item is the green slime:
				if green_slime_latch is "not ready":
					now green_slime_latch is "ready";
					the green slime grows in three turns from now;
		else:
			if the item is glowing mushroom:
				say "[if Ralph is in the location][one of]'I'm not a gardener, Teacup, but I think fungi like [the item] only grow in the dark.' Ralph tells you.[or]'Maybe there's a way to turn off the lights in the park?' Ralph suggests hopefully.[or]Ralph mutters to himself, something about 'darkness'.[or]Ralph says 'Let's see if we can turn off the park lights.'[stopping][else]'You remember something from your research that mushrooms like to grow in the dark.  Maybe the park lights can be turned off.'[end if]".
	
At the time when the glowing mushroom grows:
	now the glowing mushroom is mature;
	now the glowing mushroom is lit.

At the time when the green slime grows:
	now the green slime is mature.
		
After planting a fungus with a gardening tool:
	if the noun is lit:
		now the noun is unlit.
	
The fungus harvest rules is a rulebook.

A fungus harvest rule:
	if the noun is mature:
		if the noun is glowing mushroom:
			say "When you harvest [the noun], it seems brighter than before.";
		if the noun is the green slime:
			say "You pull the horrifying [noun] from the ground.  Your paw feels slightly numb now.";
		now the noun is loose;
		continue the action;
		rule succeeds;
	else:
		say "[The noun] is not yet ready to be picked.";
		rule fails.

Instead of anyone taking planted fungus:
	follow the fungus harvest rules.
Instead of the player taking planted fungus:
	follow the fungus harvest rules.
		
Instead of planting something, say "What did you want to plant [the noun] with?".
		
Instead of planting the glowing mushroom with something in a fertile room:
	if the second noun is a gardening tool:
		say "Like real farmer, you create a tidy hole in the ground with [the second noun] and carefully put [the noun] inside.";
		now the noun is in the location;
		now the noun is juvenile;
		now the noun is planted;
		now the noun is unlit;
		continue the action;
		rule succeeds;
	else:
		say "[The second noun] cannot be used to plant [the noun].";
		rule fails;

Instead of planting the green slime with something in a fertile room:
	if the second noun is a gardening tool:
		say "Without understanding why, you plant the slime in the rich soil of [the location].  You wonder if you will regret this later.";
		now the noun is in the location;
		now the noun is juvenile;
		now the noun is planted;
		now the noun is unlit;
		continue the action;
		rule succeeds;
	else:
		say "[The second noun] cannot be used to plant [the noun].";
		rule fails;
	
Instead of planting a loose sapling with a gardening tool in a fertile room:
	say "You're getting good at this.  Skillfully using [the second noun], you replant [the noun].";
	now the noun is in the location;
	now the noun is planted.

Instead of planting fungus with something in an infertile room:
	say "This is not a good place for planting.";
	rule fails.

After taking the glowing mushroom when the glowing mushroom is not handled:
	say "You pull the glowing mushroom out of the ground and notice that it is not quite as bright as it used to be.";
	the glowing mushroom dims in three turns from now.

At the time when the glowing mushroom dims:
	if the glowing mushroom is loose:
		say "The glowing mushroom seems to be getting dimmer.";
		the glowing mushroom dims again in three turns from now.

At the time when the glowing mushroom dims again:
	if the glowing mushroom is loose:
		say "Your glowing mushroom is definitely getting darker!  Perhaps you can find another one or somehow replant this one?";
		if Ralph is in the location:
			say "[line break]'That's not good,' Ralph worries.";
		the glowing mushroom almost dies in three turns from now.

At the time when the glowing mushroom almost dies:
	if the glowing mushroom is loose:
		say "Oh no!  The mushroom is barely glowing at all now!";
		if Ralph is in the location:
			say "[line break]'We need to do something, Teacup!' Ralph warns.";
		the glowing mushroom dies in five turns from now.

At the time when the glowing mushroom dies:
	if the glowing mushroom is loose:
		say "The glowing mushroom has gone out!";
		now the glowing mushroom is unlit.
	
Test mushroom-light with "push lump / gonear old storage area / get mushroom / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z ".
		
Test planting with "gonear underground park / purloin mushroom / purloin spoon / plant mushroom with spoon /".

Digging is an action applying to one visible thing and requiring light.  Understand "dig [something]" as digging.

The terrible slime rules is a rulebook.

A terrible slime rule:
	if the green slime is mature:
		if Sunshine has not ended:
			now slime_is_attacking is "false";
		else if slime_is_attacking is "false":
			if the location of the player is the location of the green slime:
				now slime_is_attacking is "true";
				say "The green slime is bubbling and surging towards you!";
				the green slime attacks in one turn from now;
		else:
			if the location of the player is not the location of the green slime:
				now slime_is_attacking is "false".

At the time when the green slime attacks:
	if the location of the player is the location of the green slime:
		say "You stand there gawping while the green slime is slopping! [if Ralph is in the location] Ralph tries valiantly to protect you, but it's no use! [end if] It slops and gurgles over you, and you slowly disolve into sticky bubbles, mixing with the slime until you are inseperable from it.  For the first few moments you could still breathe; you spent that time screaming.";
		end the story finally saying "You have died.";
	else:
		say "You narrowly escape from the surging green slime".		

When play begins, say "You are Teacup, an unusually bright and clever fox from Foxtown.  Get ready for your next adventure!"

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

After taking inventory:
	if Ralph is not in the lump:
		say "[line break]";
		say "Ralph is carrying [the list of things held by Ralph].".

A fox is a kind of animal.  The player is female.
The description of the player is "You're normally a cute little fox, but right now you look rather stinky.  When this is all over, there will be lots of licking to clean yourself up.".

Instead of examining Ralph:
	if Ralph is in the lump:
		say "Where is Ralph?  It would be great if your best friend were here to help you.";
		rule fails;
	otherwise:
		say "Ralph is a young wolf with light gray fur and wearing a blue collar.  He's been your friend and trusty companion on more adventures than you can count on with all four paws.";
		rule succeeds.

A wolf is a kind of animal. Ralph is a male wolf.  "Ralph is here beside you, ready to follow your lead."  Understand "friend" and "wolf" as Ralph.  Ralph is in the lump.  Ralph is wearing a blue collar.  The description of the blue collar is "This is no cheap PetSmart dog collar;  it looks pretty fancy with its blue leather strap studded with silver and a golden buckle."

Chapter 1 - Waking Up

Starting Out is a scene.  Starting Out begins when play begins.  Starting Out ends when Earthquake begins.

Small Room is a room. "This is a small room with no windows.  It is dimly lit from a grubby ceiling lamp high above your head and shines down on a [if trap door is revealed]trap door[otherwise]dirty rug[end if] in the middle of the floor.  A doorway to the east is completely filled with a pile of rubble."

The trap door is below the Small Room and above the Cellar.  The trap door is a secret door.  "It looks like it was well-made when it was new, but it doesn't seem to have been used for many years."  Understand "trap" as the trap door.

Instead of opening the trap door for the first time:
	say "You and Ralph put your backs into it and apply all of your combined canine power.  There is a loud snapping sound as rusted metal and old wood give way, causing the door to fly open and you and Ralph to tumble over backwards.";
	say "The trap door is now open!";
	now the trap door is open;
	rule succeeds.
	[continue the action.]

The pile of rubble is scenery in the Small Room.  "This is a pile of cement chunks and heavy bits of debris that rise all the way to the ceiling.  There's no way you can get through it.".

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

The ceiling lamp is scenery in the Small Room.  "It looks old and hasn't been cleaned in years, but at least it works.  How much worse would it have been to wake up in total darkness?"

The dirty rug is fixed in place in the Small Room.  "[if the trap door is revealed]The dirty rug has been moved to one side of the room.  You don't want to touch it anymore.[otherwise]A dirty rug lies in the center of the room.  It's horrible looking and probably much worse to touch.  It looks quite thick and heavy, though with some help you could probably move it.".  The description is "An oval-shaped rug, woven from some sort of fibers.  It looks a bit out of place in the room." Understand "filthy" and "dirty" as the rug.

Instead of taking the rug:
	say "The rug is too large and heavy to pickup, not to mention filthy.".

Before pushing or pulling the rug:
	if the trap door is revealed:
		say "You've already moved the filthy rug.  There's no need to do it again.";
		rule fails;
	else if Ralph is in the Small Room:
		say "Your snouts wrinkling in disgust, with Ralph's help you manage to slide the rug off to one side, leaving a trail of dirt and revealing a trap door in the floor!";
		now the trap door is revealed;
		rule succeeds;
	else:
		say "It's no use; the rug is too heavy and grimy to move it by yourself.";
		rule fails.

The desk is in the Small Room.  "A rickety wooden desk with a single drawer sits in the northwest corner of the room."  The desk is fixed in place.  The description is "It is an ordinary desk made of some light colored wood and is in very poor shape."
The drawer is a part of the desk.  The drawer is an openable closed container.  The description is "It's just a drawer made of the same wood as the desk.  It looks openable."  In the drawer is a leather bound book.

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

A lump is in the Small Room. "The lump that you were lying near is here, moving up and down very slightly.  It might be alive!"  The lump is fixed in place.  Understand "warm" and "furry" as the lump.
	
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
	remove lump from play;
	rule succeeds.

The Cellar is a room.  "It is cold and damp here, there is just enough light coming from the room above to see that you are in a cellar with cobblestone walls and exits to the north and south.  This place looks ancient, possibly unused for centuries.  [if slime is handled]A green shmear on the stones is evidence that slime once grew here.[else]Green slime drips from the cracks between stones.[end if]".  The cobblestones are scenery.  The cobblestones are in the Cellar.  Understand "stones" and "cracks" as the cobblestones.

Instead of examining cobblestones:
	say "Old stones stacked expertly to form a solid wall, probably made by master masons hundreds of years ago, if not more."

The green slime is poisonous juvenile fungus in the Cellar.   "Green slime grows between the stones."  Understand "putrid", "horrible", and "shmear" as the green slime.

The Old Storage Area is a dark room.  It is north of the Cellar. "[if location of the rotting crates is the Old Storage Area]The stone-walled tunnel ends here, in what looks like an old storage area, based on the rotting crates lying about.[otherwise]The stone-walled tunnel end here, in this now empty old storage area.[end if]".  The glowing mushroom is here.  The glowing mushroom is lit fungus.  "On the ground between two of the crates a glowing mushroom is growing."

Some rotting crates are in the Old Storage Area. "There are some moldy wooden storage crates here."  The description is "Made from the wood of trees that have long since died or were chopped down.  You think even a sneeze could destroy them."  Understand "crate" as crates.

Instead of taking, attacking, touching, or entering the rotting crates:
	say "The rotting crates are empty and they crumble to dust at your slightest touch.";
	remove the rotting crates from play.

The Cave-In is a dark room.  It is south of the Cellar.  "It is hard to say how far south the old stone-walled tunnel once led, because at the south end of the room the roof has collapsed, making the way now impassible.  [paragraph break]The ground is shifting under your paws and your hackles are rising:  you sense danger here!" The peanut is here.  The peanut is food.

Instead of going down from the Cave-In:
	say "You can't go that way.".

Before going to the Cave-In for the first time:
	say "[line break]";
	say "Before you can leave, Ralph grabs your shoulder. 'Teacup, listen!  Can you hear that?  Let's get out of here, now!'";
	say "You shrug your haunches and continue anyway. 'What choice do we have?' You ask.".
	
Before going to the Cellar from the Cave-In for the first time:
	say "[line break]";
	say "'Phew!', Ralph says with obvious relief.".

The Unstable Area is a region.  The Cellar and Cave-In are in the Unstable Area.

Instead of listening to the Unstable Area:
	if the location is the Cellar:
		say "You don't need the sharp fox ears to hear the low rumbling coming from the south.";
	if the location is the Cave-In:
		say "You can hear, and feel, a rumbling in the ground here.  This area seems unstable to you.".
			
Instead of eating the peanut:
	say "You eat the peanut, shell and all.  Most folks just eat the inside part.";
	remove peanut from play;
	rule succeeds.

The secret note is a thing.  The description of the secret note is "It reads: OOPEHT".  Understand "note", "secret", "oopeht", and "thepoo" as the secret note.

Instead of attacking the peanut:
	say "You crack open the shell and find a note inside!";
	now Player has the secret note;
	remove peanut from play;
	rule succeeds.

[The snarf is poisonous food in the Small Room. "Yucky snarf.".]

Instead of the player eating poisonous food:
	say "[if the noun is the green slime]Didn't your parents ever warn you about eating unknown fungi?  You should have listened to them more carefully, because your experience with eating [the noun] does not go well.[paragraph break]The horrible taste of the stuff was not the worst part.  The hours of painful stomach cramps and hallucinations also were not the worst part.  The worst part was definitely when your head melted and you died.[else]You whimper in pain, then make a horrible mess on the floor as you die.[end if][line break]Ralph was smart enough not to eat [the noun], but not smart enough to escape this place without your help.  So he died a few days after you did, lonely and miserable.[paragraph break]Game over, Teacup!";
	end the story finally saying "You have died.".

Instead of Ralph eating poisonous food:
	say "Against his better judgement, Ralph does as you ask and eats [the noun].  [paragraph break][if the noun is the green slime]You watch as his head melts into a puddle of fur and teeth,[else] He whimpers a bit from the pain in his stomach,[end if] then he falls over dead.  Maybe you were smart enough to not eat [the noun], but now without Ralph you have no hope of getting out of this place alive.[paragraph break]Game over, Teacup!";
	end the story finally saying "You have died.".
	
test ralph-poison with "push lump / pull rug / open door / d / get fungus / drop fungus / ralph, get green fungus / ralph, eat green fungus".

Instead of taking the green slime when the green slime is not handled:
	say "You scrape some of the stuff from between various cracks on the walls until you have enough to hold onto.  It looks greenish and unhealthy.";
	now player has the green slime;
	rule succeeds.

Instead of examining the green slime when the green slime is not handled:
	say "It's green, it's slimey, it looks nasty, and it smells worse.  However, if you really wanted to, it looks like it can be removed from the cellar stones.".
	
Instead of examining the green slime when the green slime is handled:
	say "TODO  it looks plantable.".	

Instead of the player eating the glowing mushroom:
	say "You plop [the noun] into your mouth, chew, and swallow.  Not too bad, surprisingly.[paragraph break]'That certainly wasn't your brightest idea,' Ralph quips. 'I hope this game has an UNDO feature.'";
	remove glowing mushroom from play;
	rule succeeds.
	
Instead of giving food to Ralph:
	if the noun is safe:
		say "Ralph sniffs [the noun] carefully.  'Mmm...smells good!'";
		now Ralph has the noun;
		rule succeeds;
	otherwise if the noun is poisonous:
		say "Ralph politely declines your offer to poison him.";
		rule fails.
		
Instead of giving something to Ralph:
	say "You hand over [the noun] to Ralph.";
	now Ralph has the noun;
	rule succeeds.
		
Instead of Ralph giving something to the player:
	say "Ralph says, 'Good.  I was tired of carrying [the noun].'";
	now the player has the noun;
	rule succeeds.
	
Instead of Ralph giving the blue collar to the player:
	say "'My mum gave me that for Christmas!' Ralph exclaims.  'No way.'";
	rule fails.
	
Instead of Ralph dropping the blue collar:
	say "How would I explain it to my mum if I lost my Christmas collar?".

Test giving with "push lump / open drawer / ralph, get book / ralph, give book to me / ralph, give collar to me / give book to ralph".

Instead of throwing anything at Ralph:
	say "
	[one of]Like a furball ninja, Ralph easily dodges [the noun], where it falls harmlessly to the ground.
	[or][The noun] completely misses.  Ralph looks at you with a raised eyebrow.
	[or]Quick as a fox, or a wolf, rather, Ralph bats [the noun] back in your direction and it hits you in the face!
	[or]Ralph says 'Is that really the best way for us to get out of this trap?'
	[at random]";
	now the noun is in the location.
		
The Earthquake is a scene.  Earthquake begins when Ralph is in the Cave-In.  Earthquake ends when the player has the peanut.

When Earthquake ends:
	say "[bold type]Boooooom!!![roman type]";
	say line break;
	say "The whole room begins to shake violently!  You can't tell if it is an earthquake or if a bomb has gone off somewhere near by, but you have no time to think about it as the floor on which you and Ralph are standing suddenly collapses!  You slip off your feet and tumble into a huge crack that has opened underneath you.";
	let L be the list of things carried by the player;
	say "[line break]";
	say "During your tumble, you dropped everything you were carrying!";
	repeat with cave_item running through L:
		now cave_item is in the Dining Hall.
	
Test Earthquake with "push lump / push rug / open door / go down / go north / get glowing / go south / go south / get peanut / z".

	
Chapter 2 - The Bunny Men

Ancient Rabbitville is a region.  Kitchen, Dining Hall, Underground Park, Ledge, Abandoned Zoo, and Zoo Office are in Ancient Rabbitville.

Settling Dust is a scene.  Settling Dust begins when Earthquake ends.  Settling Dust ends when the player has been in the Dining Hall for two turns.

When Settling Dust begins:
	say "Thick dust is falling everywhere,  preventing you from seeing anything at the moment.";
	say "[line break]";
	now the Iron Chandalier is unlit;
	now the glowing mushroom is unlit;
	now the player is in the Dining Hall;
	now Ralph is in the Dining Hall.
	
When Settling Dust ends:
	say "The dust finally settles enough for you to see where you are.";
	now the Iron Chandalier is lit;
	now the glowing mushroom is lit.

The Dining Hall is a dark room.  Dining Hall is below Cave-In. "This is an elloborately decorated room with rich wood paneling on the walls and a large wooden table in the middle surrounded by fancy chairs.  The west end of the room is a mess of debris from the recent disaster, covering half the table and some of the chairs.  Hanging from the ceiling is an iron chandalier, providing light. There is a doorway to the north and a tunnel leading east.  On the west wall hangs a large tapestry."

Instead of going up from the Dining Hall for the first time, say "You search for a way to climb back up to the cave, but the debris and rubble have completely filled whatever hole you and Ralph fell through.".

Instead of going up from the Dining Hall, say "It's no use; you are completely cut off from the cave.".

The tapestry is scenery in the Dining Hall.  "It shows a rabbit with regal bearing.  The rabbit is dressed in royal clothing and holding a fancy sword."

Instead of taking the candles, say "They are way out of your reach, even if you stood on the table."

Understand "look behind [something]" as looking under.
Instead of looking under the tapestry, say "Your hopes of finding a secret stash of gold, jewels, and puppy chow are ruined.  There's nothing there.".
Instead of taking the tapestry, say "Just leave it there; you're not such a big fan of bunny art after all.".

The Iron Chandalier is scenery in the Dining Hall.  It is lit.  "It is a large band of iron suspended from the ceiling by fancy chains and holds several candles which light up the room."  The Iron Chandalier holds the candles.  The candles are fixed in place.  Understand "chandalier" as the iron chandalier.

The large wooden table is a table.  It is scenery in the Dining Hall.  "It appears to be made of oak and looks fit to serve royalty."

Some wooden chairs are chairs.  They are scenery in the Dining Hall.  "The wooden chairs match the table and look like something you would find in a palace."  Understand "chair" as wooden chairs.

The Kitchen is a dark room.   It is north of the Dining Hall. "You are in a medium-sized room that looks like it served as a kitchen in ages past.  It has been cleaned out."   A serving spoon is here.  The serving spoon is a gardening tool.  "A serving spoon is on the ground here, missed by whomever cleaned out the kitchen.".

Instead of looking in the Kitchen, say "The kitchen is plain, but large and once upon a time very functional.  You imagine that many large, fancy meals were once prepared here."

The Underground Park is a fertile room.  It is east of the Dining Hall.  "This is a large open area stretching out in all directions as far as you can see, covered with grassy rolling hills and shallow valleys.  High above you is a bright ceiling, as if painted in light.  At the far end of this area you can see a gray rocky outcrop rising above the sea of green grass.  A trail through the grass leads off to the east.".

A park sign is fixed in place in the Underground Park. "There is a large sign here."

Instead of examining the park sign:
	say "The sign looks like the official kind you find in public parks.  The posts are rotting and the paint is chipped and worn, but you can make out some letters:";
	say "[line break][fixed letter spacing][bold type]";
	say "     Ra bitvill  P rk[line break]";
	say "     Magi al Growing Area";
	say "[roman type][variable letter spacing]".

A large rock formation is scenery in the Underground Park.  "Rocks larger than yourself and stacked here, one atop the other.  They look climbable.". Understand "outcrop", "rocks", and "rocky outcrop" as the rock formation. Some chisled steps are part of the rock formation. The description of the chisled steps is "Some steps have been chisled into the rocks to make climbing easier.".

After going to the Underground Park for the first time:
	try looking;
	say "'Woah!' you exclaim, wondering at the magic that allows grass to grow underground like this.".

Instead of climbing the rock formation, try going up.  Instead of climbing the chisled steps, try going up.
	
Before going up from the Underground Park:
	say "Using the provided steps, you carefully scramble upwards.";
	continue the action.

The Abandoned Zoo is a room.  The Abandoned Zoo is east of the Underground Park.  "Here you see silver cages on display, resting on raised platforms.  It looks like some sort of zoo.  Whatever creatures were here died long ago, because there are only bones in the cages now.  To the west you can see the grassy area, and on the north wall there is a doorway."

Some silver cages are cages in the Abandoned Zoo.  The silver cages are locked and transparent.  "There are cages here, in which you can see some bones." Some old bones are in the silver cages.  Understand "cage" as the silver cages.  The silver cages has plaque "A coyote, a fox, a wolf".  Understand "bone" and "bones" as the old bones.

Some bone meal is a thing.  "The bone meal you made is here."  The description is "The bone meal is a fine white powder in a neat little triangular pile, briming with potential.".  Understand "meal" as the bone meal.

Understand "crush [something]" as attacking.

Instead of attacking the old bones: 
	say "You find a hard surface to rest the bones against, then grind and smash them until you create a fine powdery dust.";
	remove old bones from play;
	now the player is carrying the bone meal.

Instead of Ralph attacking the old bones:
	say "smashing success!";
	remove old bones from play;
	now Ralph is carrying the bone meal.

Instead of examining the silver cages:
	say "All the cages have plaques with writing on them.  You read some of them:[line break]    Coyote[line break]    Fox[line break]    Wolf[line break]";
	say "With mounting horror, you stop reading.  Now you know what the bones are from!";
	if Ralph is in the Abandoned Zoo:
		say "[line break]'These poor people were just left here to die!' Ralph wails.".

Instead of unlocking the silver cages with cage key:
	say "You unlock the silver cages and can now get to the bones, if you wish.";
	remove cage key from play;
	now the silver cages are unlocked.
	
The office door is a door.  The office door is north of the Abandoned Zoo and south of the Zoo Office.

The Zoo Office is a room. "Office of the Zoo.  There are no exits except the one you arrived by, to the south.  In one corner of the room stands an official looking desk.".  

The control panel is fixed in place in the Zoo Office. The green button is a turned on switch.  The green button is part of the control panel.  The description is "Park Lights".

Instead of examining the control panel, say "The control panel has a green button.".

Instead of pushing the green button:
	say "Click.";
	if the green button is turned on:
		now the green button is turned off;
		now the Underground Park is dark;
	else:
		now the green button is turned on;
		now the Underground Park is lit.
		
Test parklights with "gonear zoo office / push button / gonear underground park / gonear zoo office / push button / gonear underground park".

The office desk is fixed in place in the Zoo Office.  The office desk is furniture. "There is a desk here, perhaps once used for Zoo business." The description is "It is an ordinary looking desk, made of metal painted gray.  It contains a small drawer."  On the office desk is the cage key.  The cage key unlocks the silver cages.  The small drawer is part of the office desk.  The small drawer is an openable closed container.  In the small drawer is the zoo record book.

Before examining the zoo record book:
	say "The old record book is fragile and falling apart.  Most of the early pages are rotted away or the ink too faded to read.  However, on the last page you can barely make out a few rows of text:[line break]";
	say "[fixed letter spacing]";
	say "     1792, October 31  - Fed prisoner 98 to the wolf.[line break]";
	say "     1792, December 9  - Fed prisoner 103 to the fox.[line break]";
	say "     1783, March 11    - Fed prisoner 101 to the wolf.[line break]";
	say "     1783, June 6      - Fed prisoner 129 to the fox.[line break]";
	say "     1783, August 28   - Fox from cage 1 dead.  Requesting a new one.[line break]";
	say "[variable letter spacing]";
	if Ralph is in the location:
		say "[line break]'Yikes!' Ralph yelps. 'What kind of zoo was this?'".
	
Sunshine is a scene.  Sunshine begins when Giant Oak is in the Ledge.

Before going down from the Ledge:
	if the green slime is planted and Sunshine is happening:
		say "The sun light coming through the hole in the roof made by the giant oak tree seems to have put the slime to sleep.  It looks safe now, so you scramble down the rocks.";
		continue the action;
	else if the green slime is planted and the green slime is mature:
		say "It'll be too dangerous.  You barely escaped the slime before, and now it has grown even bigger.";
		rule fails;
	else:
		say "It's more difficult climbing down than up, but you make it down without incident.";
		continue the action.

The Ledge is a fertile room.  Above the Underground Park is the Ledge. The description of the Ledge is "You have reached a small flat area atop the rocks, with a [if the giant oak tree is in the ledge]giant oak tree growing here[else]bit of soil and a sapling.[end if]  [if the green slime is planted in the Underground Park]You can see the slime below, making a climb back down there very dangerous.[else]From up here you have an amazing view of the vast and beautiful grassland below you.[end if]".

An oak sapling is a planted sapling in the Ledge.  "A spry young oak sapling is growing in the dirt here."

After taking the oak sapling, now the oak sapling is loose.
	
The Giant Oak Tree is scenery. "A beautiful example of an oak tree.  If you didn't know better, you would think it was 150 years old based on its size."
	
Outskirts of Fox Town is a room. Outskirts of Fox Town is above the Ledge. "After so long in the dark, the warmth of the sun feels really good on your fur.  You are in a clearing with heavy woods all around you, except toward the west where you see a damaged building at the edge of Fox Town.".  Understand "Outskirts" as Outskirts of Fox Town.

Instead of examining the sapling, say "It looks very similar to the saplings that you see when you play Minecraft.".

Instead of putting the bone meal on a sapling:
	say "You fertilize [the second noun] with the bone meal.  For a moment nothing happens, and then right before your eyes the sapling begins to grow rapidly, stretching above you towards the roof.";
	say "[line break][bold type]Crunch![roman type][paragraph break]";
	say "The growing oak smashed right through the roof of the park! You can see sunlight streaming through the hole.[line break]The tree seems to have stopped growing and now looks climbable to you.";
	remove the oak sapling from play;
	now the Giant Oak Tree is in the Ledge;
	now Outskirts is above the Ledge;
	now the Ledge is below the Outskirts.

Instead of climbing the giant oak tree, try going up. 	
Instead of going up from the ledge:
	say "You scramble from branch to branch until you make it through the hole near the hole near the top of the tree.";
	continue the action.
	
Destroyed Building is a room.  Destroyed Building is west of Outskirts.  "Rumbled crumbled."

After going to the Outskirts for the first time:
	say "You are momentarily blinded by the bright afternoon light, but as your eyes adjust, familiar shapes start to come into focus.  Amazingly, and for the first time in what seems a very long while, you actually recognize where you are!";
	try looking.
		
After Ralph going to the Outskirts for the first time:
	say "Ralph says 'Teacup!  I remember this place now!'  He points one sharp claw towards the west: 'There's the building we were sent to investigate!'"
	
Instead of going nowhere from the Outskirts:
	say "You quickly realize that it would be entirely pointless to wander around in the woods.  Using your better judgement, you stay put.[line break]";
	say "Ralphs waves at you, still pointing westward.  He wants you to go with him."
			
Instead of going up in the Outskirts:
	say "Flap, flap.  Waving your furry arms about like a bird's wings, you attempt to take flight.  Unfortunately, you continue to be a fox on the ground.".
	
Blotz McDoogle is a male fox.  Understand "Blotz" and "McDoogle" as Blotz McDoogle.  Blotz is in the Destroyed Building.

Instead of examining Blotz McDoogle, say "Blotz McDoogle is an elderly fox who is rather plump.  You remember that he is a friend of your father's and he hired you to retrieve a peanut.  Probably one of the silliest cases you and Ralph have ever taken."

Meeting Blotz is a scene.  Meeting Blotz begins when the player is in the Destroyed Building for the first time.
Meeting Blotz ends when the Destroyed Building is visited.
	
Instead of the player going to the Destroyed Building:
	if the Destroyed Building is unvisited:
		say "With tired paws, you begin the short walk over to the damaged-looking building.";
		if Ralph is in the location:
			say "Ralph says 'There's somebody waving to us over there!'";
		else:
			say "Up ahead, you notice somebody waving to you.";
	continue the action.

When Meeting Blotz begins:	
	say "Blotz McDoogle is an older fox with gray fur who is rather large around the middle.  Before noticing you, he was looking terribly upset and was wringing his paws together in agitation.  But at first sight of you, his snout grew an enormous grin and he started bouncing up and down in happiness.[paragraph break]";
	say "'Teacup!  I'm so happy you're okay!' Blotz McDoogle exclaims.  'When I couldn't find you after the earthquake, I cursed my foul luck in asking you and Ralph to search for my lost peanut.[paragraph break]";
	say "'But speaking of Ralph, where is he?  Didn't he make it out with you?'".
	
After Ralph going to the Destroyed Building for the first time:
	say "Ralph arrives from the giant tree.[paragraph break]";
	say "'Ah, there you are Ralphie boy!' beamed Blotz happily.  'You had me worried for a moment.'[paragraph break]";
	say "'So, now that I know you two are alright, might I ask if you managed to find my peanut?' asks Blotz.  'It's ever so important to me.'".

Chatty Blotz is a scene.  Chatty Blotz begins when Meeting Blotz ends.		
Every turn when Chatty Blotz is happening:
	say "Blotz McDoogle [one of]is looking hopefully at you.[or]says 'So, about that peanut...?'[or]is trying to make peanut shapes with his paws[or]says 'I can't wait to hear about my peanut!'[or]is drawing peanuts in the dirt with his toe claws.[or]says 'It's quite possibly the most important peanut in the world!'[or]say 'Please, tell me about the peanut.'[at random]".
		
Instead of asking Blotz McDoogle about "peanut":
	say "'Did the earthquake knock your wits about?  I asked you and Ralph to investigate my lost peanut, last seen in this area.  You two were searching this building here when the earthquake struck and I lost you,' Blotz explains.[paragraph break]";
	say "Blotz eyes you suspiciously. 'We should get you and Ralph checked out at hospital, after, of course, you tell me about my peanut!' Blotz beams happily.".
	
Instead of asking Blotz McDoogle about "secret note":
	say "'You broke my peanut?' splutters Blotz, looking incredulous.  'Well, I suppose retrieving the secret note is good enough.'".

Instead of asking Blotz McDoogle about something:
	say "Blotz replies 'I'll answer any questions you might have after you tell me about the peanut!'".
	
Instead of giving the peanut to Blotz McDoogle:
	say "Woot!";
	end the game in victory.
	
Instead of giving the secret note to Blotz McDoogle:
	say "Toot!";
	end the game in victory.
	
Instead of giving something to Blotz McDoogle:
	say "Blotz McDoogle steps away, waving his paws.  'I'm only interested in my peanut!'".
	
Instead of talking to Blotz McDoogle:
	say "[one of]'You found my peanut, right?  Please tell me you found it!' Blotz McDoogle urges.[or]'P. E. A. N. U. T.' Blotz spells out.[or]'I want nutty news! McDoogle shouts.[at random]".
	
Instead of telling Blotz McDoogle about "secret note":
	say "Feeling more than a bit ashamed, you tell Blotz about how you and Ralph smashed the peanut and found the secret note inside.";
	say "Blotz McDoogle, looking only a little upset, says 'Well, I guess learning the secret code is good enough!  Thank you both for retrieving it for me.";
	end the game in victory.
	
Instead of telling Blotz McDoogle about something:
	say "'I'm sure that's all very interesting, but what about my peanut?' replies Blotz.".
	
