// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

if (!hasInterface) exitWith {}; //Exit if not a player.

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};


// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

private _side = (side Player);

// ====================================================================================

// BRIEFING: BLUFOR > NATO
// The following block of code executes only if the player is in a NATO or NATO (Pacific) slot; it
// automatically includes a file which contains the appropriate briefing data.

if (_side isEqualTo west) exitwith {

	#include "f\briefing\f_briefing_1.sqf"	

};

if (_side isEqualTo east) exitwith {

	#include "f\briefing\f_briefing_2.sqf"	

};