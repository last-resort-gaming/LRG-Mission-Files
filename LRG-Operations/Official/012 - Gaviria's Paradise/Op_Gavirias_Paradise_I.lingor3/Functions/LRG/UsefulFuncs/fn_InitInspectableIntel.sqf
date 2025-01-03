/*
Function: LR_fnc_initInspectableIntel

Description:
	Initializes a given object as a piece of inspectable intel.

	Upon interaction, the player that started interaction will have
	the piece of intel as a full-screen image with the ability to 
	display supplied text (optionally).

	Players can also take the intel, adding the acquired intel
	to the diary (on the map) of all players.

	The Intel Argument Array needs to supply the following information:

	_texture - The path to the texture of the intel which shall be displayed in full-screen upon inspection
	_diaryPicture - The path to the picture which shall be displayed in the diary
	_diaryRecord - Array containing the message in format: [Title, Entry Text]
	_fullScreenText - Optional: The text to be shown if player clicks button "Read" during inspection
	_actionTitle - Title of the action to be added to the object for picking up
	_sharedWith - The side with which the intel shall be shared (default: west)
	_notifySide - Optional: Notify the player's side through systemChat? (default: no)

Parameters:
	_object - The object to initialize
	_args - Intel Argument Array (see above)

Return Values:
	None

Examples:
    --- Code
	// In the init field of an object in the editor (e.g. a Laptop or Documents)
	[
		this,
		[
			 "data\images\example.paa"
			,"data\images\example_small.paa"
			,[
				 "Intel Report Nr 332-Charlie"
				,"Lorem Ipsum dolor sit amet, etc etc"
			]
			,"Lorem Ipsum"
			,"Search Files"
			,west
			,true
		]
	] call LR_fnc_initInspectableIntel;
	---

Author:
	Mokka
*/

// TODO: Change action for picking up to a hold action
// TODO: Allow sharing the intel

if (!isServer) exitWith {};

_this params ["_object", "_args"];
_args params [
	["_texture","a3\data_f\clear_empty.paa"],
	["_diaryPicture","a3\data_f\clear_empty.paa"],
	"_diaryRecord",
	["_fullScreenText", ""],
	["_actionTitle", "Take Intel"],
	["_sharedWith", west],
	["_notifySide", false]
];

[_object, _texture, _fullScreenText] call BIS_fnc_initInspectable;

_fnc_setAddAction = {
	if ( hasInterface ) then {
		_this params [
			"_object",
			["_actionTitle", "Take Intel"]
		];

		[
			 _object
			,_actionTitle
			,"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa"
			,"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa"
			,"isplayer _this && {_this distance _target < 2} &&
			 {
			 	((side group _this) in (_target getvariable ['RscAttributeOwners',[west,east,resistance,civilian]])) ||
			 	(((group _this) getVariable ['LRG_section','Command']) in (_target getVariable ['RscAttributeOwners',['Command']]))
			 }"
			,"true"
			,{ ["<t color='#FFBB00' size = '.5'>You're collecting the Intel.</t>",-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;}
			,{}
			,{ 	[_this,"action"] spawn BIS_fnc_initIntelObject;
				["<t color='#339900' size = '.5'>You've collected the Intel.</t>",-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;
			},{["<t color='#cc3232' size = '.5'>You've stopped collecting the Intel.</t>",-1,0.8,5,2,0,789] spawn BIS_fnc_dynamicText;}
			,[]
			,5
			,-97
			,true
			,false
		] call BIS_fnc_holdActionAdd;
	};
};

// Add the action
[[_object, _actionTitle], _fnc_setAddAction] remoteExec ["call"];


// Set the diary picture
_object setVariable [
	"RscAttributeDiaryRecord_texture",
	//Path to picture
	_diaryPicture,
	true
];


//Diary Title and Description
_diaryRecord append [""];
[
	_object,
	"RscAttributeDiaryRecord",
	//[ Title, Description, "" ]
	_diaryRecord
] call BIS_fnc_setServerVariable;


if (typeName _sharedWith == "STRING") then {
	_recipients = [];
	{
		if (side _x == west && {_x getVariable ["LRG_section", "Command"] == _sharedWith}) then {
			_recipients pushBackUnique _x;
		};
	} forEach allGroups;
} else {
	_recipients = _sharedWith;
};

//Diary entry shared with.. follows BIS_fnc_MP target rules
_object setVariable ["recipients", _recipients, true];

//Sides that can interact with intelObject
_object setVariable ["RscAttributeOwners", [_sharedWith], true];

//Add intel object scripted event that systemchats to all clients when found and by who
if (_notifySide) then {
	[
		_object,
		"IntelObjectFound",
		{
			params[ "", "_foundBy" ];
			[format ["<t color='#339900' size = '.5'>Intel collected by %1</t>", name _foundBy],1,-0.2,5,0,0,790] remoteExec ["BIS_fnc_dynamicText",0,false];	
		}
	 ] call BIS_fnc_addScriptedEventHandler;
};