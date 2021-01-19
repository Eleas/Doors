"Many Doors" by "Y'Gael of Atrii"


First is a room.
The first door is a locked closed openable door. the indefinite article is "the". The first door is north of first and south of Second.
	the description of the first door is "A contraption is attached to the doorknob.[the description of the contraption]";

the first doorknob is part of first door.

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
		

Second is a room.
	The large box is an opaque closed openable container in Second.
	the medium box is an opaque closed openable container in the large box.
	the small box is an opaque closed openable container in the medium box.
	the smaller box is an opaque closed openable container in the small box.
	the tiny box is an opaque closed openable container in the smaller box.
	the tiny key is a thing in the tiny box.

The second door is a closed locked openable door. The indefinite article is "the".The second door is north of Second and south of Third. Second door is locked. The tiny key unlocks Second door.
	
Third is a room.