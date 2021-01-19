"Many Doors" by "Y'Gael of Atrii"

[Rules-----------------------------------------
1.New rooms must be north of the previous room. No "side" rooms.
2. Only one room per puzzle permitted.
3. Rooms must be named for their place in the sequence (e.g. "First Room", "Second Room").
4. Open your room code with a new chapter and comment, following the format of the first room.
5. I have already put in some code to make the player lose all previous items when entering a new room, and the player cannot go south to a previous room without getting a "locked door" message. You can either make your own items for the next room, or you can pull one of the previously used items from "nowhere" when the player enters.
6. Do not interfere with anyone else's room code unless it contains a game-breaking bug or unless we have discussed and agreed upon it in the project page.
7. Each contributor may add as many new puzzles/rooms as they like, as long as they follow the format outlined above.
8. Suggestions for an overall story are fine. For now, I'll put in something simple to get the point across.]

When play begins:
	say "Welcome volunteer! Thank you again for agreeing to undergo this simple intelligence test. You will be faced with a number of rooms. Inside each room is one puzzle. Solve each puzzle to open the next door. You can quit at any time by typing QUIT. Good luck!".

After going somewhere:
	let L be the list of things carried by the player;
	repeat with item running through L:
		now item is nowhere;
	if the player is not carrying nothing:
		say "You discard all of the items from the previous test.";
	continue the action;

Instead of going south:
	if there are at least two doors in the location:
		say "The door has locked behind you.";
	otherwise:
		continue the action;
	
Sailoring is an action applying to nothing. Understand "Hello Sailor" as Sailoring.

After Sailoring:
	say "Nothing happens here.";
	
xyzzy is an action applying to nothing. Understand "xyzzy" as xyzzy.

After xyzzy:
	say "A hollow voice says [quotation mark]Fool![quotation mark].";

Chapter 1 - First Room
	
[FIRST ROOM-------------------------------------]

First Room is a room.
The first door is a locked closed openable door. the indefinite article is "the". The first door is north of First Room and south of Second Room.
	the description of the first door is "A contraption is attached to the doorknob.[the description of the contraption]";

The first doorknob is part of first door.

instead of opening something (called the package) that is enclosed by a container (called the nest):
	say "You must take it out of [the nest] first.";

The contraption is a device.
The contraption is part of the first doorknob.

the description of the first doorknob is
"[the description of the first door]".

the description of the contraption is
"The contraption has a button and a lit LED. [if  the contraption is switched on]The LED is green.[otherwise]The LED is red.".

the LED is part of the contraption.
the description of the LED is
"[if  the contraption is switched on]The LED is green.[otherwise]The LED is red."

the button is part of the contraption.
the description of the button is
	"It's just a button.".

after pushing the button:
	silently try switching on the contraption;

after switching on the contraption:
	say  "[quotation mark]Click[quotation mark]";
	now the first door is unlocked;

turning on is an action applying to one thing.

check turning on:
	if the noun is switched off:
		now the noun is switched on;
	otherwise if the noun is switched off:
		say "It is already on.";
	otherwise:
		say "That isn't something you can turn on.";
		
turning off is an action applying to one thing.

check turning off:
	if the noun is switched on:
		now the noun is switched off;
	otherwise if the noun is switched on:
		say "It is already off.";
	otherwise:
		say "That isn't something you can turn off.";

Chapter 2 - Second Room
[SECOND ROOM--------------------------------]		

Second Room is a room.
	The large box is an opaque closed openable container in Second.
	the medium box is an opaque closed openable container in the large box.
	the small box is an opaque closed openable container in the medium box.
	the smaller box is an opaque closed openable container in the small box.
	the tiny box is an opaque closed openable container in the smaller box.
	the tiny key is a thing in the tiny box.

The second door is a closed locked openable door. The indefinite article is "the".The second door is north of Second Room and south of Third Room. Second door is locked. The tiny key unlocks Second door.

Chapter 3 - Third Room
[THIRD ROOM--------------------------------]	
Third Room is a room.