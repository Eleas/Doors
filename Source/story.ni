"Many Doors" by "Y'Gael of Atrii"

[Rules-----------------------------------------
1.New rooms must be north of the previous room. No "side" rooms.
2. Only one room per puzzle.
3. Rooms must be named for their place in the sequence (e.g. "First Room", "Second Room").
4. Open your room code with a new chapter and comment, following the format of the first room.
5. There is already code to make the player lose all previous items when entering a new room, and the player cannot go south to a previous room without getting a "locked door" message. Do not remove this.You can either make your own items for the next room, or you can pull one of the previously used items from "nowhere" when the player enters.
6. Do not interfere with anyone else's room code unless it contains a game-breaking bug or unless we have discussed and agreed upon it in the project discussion room.
7. Each contributor may add as many new puzzles/rooms as they like, as long as they follow the format outlined above. Try not to make many rooms in a row, allowing others to contribute first.


Suggestions for an overall story are fine. For now, I'll put in something simple to get the point across. The first two rooms are example rooms with simple puzzles.]

When play begins:
	say "Welcome volunteer! Thank you again for agreeing to undergo this simple intelligence test. You will be faced with a number of rooms. Inside each room is one puzzle. Solve each puzzle to open the next door. You can quit at any time by typing QUIT. Good luck!".

Report going when the player holds something (this is the empty player inventory for each room rule):
    now everything carried by the player is off-stage;
    say "You discard all of the items from the previous test."

Instead of going south when there are at least two doors in the location:
	say "The door has locked behind you."

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



Definition: a door is behind us if the direction of it from the location is south.
Does the player mean doing something when the noun is behind us or the second noun is behind us: it is unlikely.

The Third Room is a room. "A Spartan room, just four square brick walls rising from a concrete floor. Everything is white-washed, except the [ceiling lights], which, topically, instead serve to white-wash everything[if the third door is locked][one of].[paragraph break]Wait. You're pretty sure there should be a [third door] here on the wall[or]. The absence of a [third door] in the north wall is difficult to ignore[stopping][end if]."

Some ceiling lights are scenery in the third room. "Enough neon brutalism to suck the joy out of a thousand birthday parties."

Instead of doing something other than examining to the ceiling lights, say "They're far beyond reach."

The north wall is a fixed in place supporter in the Third Room. The description is "The north wall [if the third door is unlocked]now has a door. Goody gumdrops[otherwise]is completely devoid of any sort of door. Just a blank brick wall."
Instead of searching or touching or rubbing the north wall when the doorframe is not on the north wall, say "You carefully probe surface of the wall, rapping lightly and tracing the brickwork with your fingers. If there's a door there, it's well-hidden."

To unmark (item - a thing):
	if the item is marked for listing, now the item is not marked for listing.

Understand "lean [something preferably held] against/on [something]" as putting it on.

For writing a paragraph about the handled doorframe when the doorframe is not on the wall: say "The doorframe lies on the concrete floor, mocking you."
For writing a paragraph about the third door when the location is the third room: say "The third door is on the wall, [if open]open and waiting[otherwise]closed but waiting[end if]."

The doorframe has a number called the intolerability. The intolerability is 4.

Every turn while the player holds the doorframe:
	if the intolerability of doorframe is 2:
		say "Dear Lord, this doorframe is heavy.";
	if the intolerability of doorframe is 0:
		say "No, this is too much. You open your numbed fingers and let the blasted thing fall to the ground.";
		now the doorframe is in the location of the player;
	decrement intolerability of doorframe.

Before listing nondescript items:
	unmark north wall;
	if the doorframe is not handled, unmark doorframe.

For writing a paragraph about the second door while the location is the third room and the third door is locked: say "At least the door you came through is still there."

Instead of trying going north from the third room when the third door is locked, say "You can't go that way."
		
The doorframe is a thing in the Third Room. 
The description of the doorframe is "This doorframe is of the exact size and shape to capably outline the door you came through. Which would make sense, really[if the player holds the doorframe]. It is [doorframe-complaint][end if]." 
Understand "frame" as the doorframe. 

To say doorframe-complaint:
	if the intolerability of the doorframe is:
		-- 3: say "really rather heavy";
		-- 2: say "...heavier than you would like. Ow";
		-- 1: say "...what could it possibly be made from, lead? Your arms can't take the strain for long";
		-- 0: say "actively painful to carry".

Last carry out dropping the doorframe: now the intolerability of the doorframe is 4.

Instead of putting something on the wall when the noun is not the doorframe:
	say "Unsurprisingly, [the noun] just falls to the floor.";
	now the noun is in the location.

Carry out examining the second door when the location is the Third Room: 
	say "[if the doorframe is not handled]The door frame is unusually thick. It looks almost as if it's been grafted onto an existing frame[otherwise]A few scuffs and epoxy flecks from where the doorframe was stuck to the door[end if].";
	rule succeeds.

Instead of searching the second door when the location is the Third Room and the doorframe is not handled:
	say "Careful scrutiny reveals that this extra frame has been glued onto the existing doorframe. Glue being what it is, the adhesive is already beginning to loosen.";
	now the doorframe is in the Third Room.

Understand "door frame" as the doorframe when the doorframe is handled.

Instead of searching the second door when the location is the Third Room: 
	say "[if the doorframe is not handled]Other than the doorframe, y[otherwise]Y[end if]ou find nothing of further interest."

After taking the doorframe for the first time:
	say "You apply some force with your fingers. The doorframe resists stubbornly for a moment, and then peels off with a satisfyingly scritchy sound.[paragraph break]Heavy, though. You let go, and the doorframe clatters to the floor.";
	now the doorframe is in the location of the player.
	
Understand "doorframe" or "frame" or "door" as the third door when the third door is not locked.

After putting the doorframe on the north wall:
	say "You drag the doorframe over to the other side of the room and balance it against the wall. It kind of looks like a door now.[paragraph break]In fact, it really does look like a door. It's got a handle and everything.";
	now the doorframe is off-stage;
	now the third door is improper-named;
	now the third door is not privately-named;
	now the third door is unlocked.

The third door is a door. The third door is north from the Third Room and south of the Fourth Room. The third door is privately-named. The third door is locked.
Rule for deciding whether all includes the not handled doorframe: it does not.
