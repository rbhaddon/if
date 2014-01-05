"The Adventures of Teacup, Episode 1" by Robert Haddon.

The story genre is "Fairy Tale". The release number is 0.  The story headline is "Story time for Teira".  The story description is "In this Teacup adventure, our foxy hero finds herself trapped within a locked room!  How did she get here, and where is her best friend Ralph the wolf?  It is up to you to help Teacup come to the bottom of this mystery."  The story creation year is 2014.

Include Secret Doors by Andrew Owen.

Release along with cover art.

Use full-length room descriptions, American dialect, no scoring, and the serial comma.

When play begins, say "You are Teacup, an unusually bright and clever fox from Foxtown.

You groan and rub open your eyes with both paws.   You discover that you are lying near a warm and furry lump in the corner of a strange room.  You have no idea how you got here or even where 'here' is.  It's time to find some answers, Teacup!"

Chapter 1 - Waking Up

Small Room is a room. "This is a small room with no windows.  It is dimly lit from a grubby ceiling lamp high above your head and shines down on a [if trap door is revealed]trap door[otherwise]dirty rug[end if] in the middle of the floor."

The Cellar is a room. "It is cold and damp here, there is just enough light coming from the room above to see that you are in a stone-walled cellar with exits to the north and south."

The trap door is below the Small Room and above the Cellar.  The trap door is a secret door.  "It looks like it was well-made when it was new, but it doesn't seem to have been used for many years."

The ceiling lamp is scenery in the Small Room.  "It looks old and hasn't been cleaned in years, but at least it works.  How much worse would it have been to wake up in total darkness?"

The dirty rug is scenery in the Small Room.  "[if the trap door is revealed]The dirty rug has been moved to one side of the room.  You don't want to touch it anymore.[otherwise]A dirty rug lies in the center of the room.  It's quite hideous to look at and probably much worse to touch.".  Understand "filthy" and "dirty" as the rug.

The desk is in the Small Room.  "A rickety wooden desk with a single drawer sits in the northwest corner of the room."  The desk is fixed in place.
The drawer is a part of the desk.  The drawer is an openable closed container.  In the drawer is a leather bound book.  


A lump is in the Small Room. "The lump that you were lying near is here, moving up and down very slightly.  It might be alive!"  The lump is fixed in place.  Understand "warm" and "furry" as the lump.

A wolf is a kind of animal. Ralph is a male wolf.  Understand "friend" and "wolf" as Ralph.  Ralph is in the lump.

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
	remove the book from play.

Instead of taking the rug:
	say "The rug is too large and heavy to pickup, not to mention filthy.".

Before pushing or pulling the rug:
	if the trap door is revealed:
		say "You've already moved the filthy rug once.  It's so gross you don't want to touch it any more.";
		rule fails;
	if Ralph is in the Small Room:
		say "Your snouts wrinkling in disgust, you and Ralph manage to slide the rug off to one side, leaving a trail of dirt and revealing a trap door in the floor!";
		now the trap door is revealed;
		rule fails;
	otherwise:
		say "It's no use; the rug is too heavy and grimy to move it by yourself.";
		rule fails.

Every turn when Ralph is in the lump, say "[if Ralph has been in the lump for less than 2 turns]A low, muffled sound is coming from the lump.[otherwise]The lump looks strangely familiar to you now, and continues to make a low sound.[end if]"

Instead of examining, pushing, pulling, or taking the lump:
	say "Looking closer at the lump, you realize it is your best friend Ralph curled up asleep!  You wake him up and he slowly comes around.";
	say "Ralph says, 'Thank you, Teacup!  What happened to us?  I don't remember anything.'";
	now Ralph is in the Small Room;
	remove lump from play.
	
Instead of examining Ralph:
	if Ralph is in the lump:
		say "Where is Ralph?  It would be great if your best friend were here to help you.";
	otherwise:
		say "Ralph is a young wolf with light gray fur.  He's been your friend and trusty companion with you on more adventures than you can count on with all four paws.".

