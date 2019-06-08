/*
	Author: HallyG
	Edited by: Acoward

	Description:
	Draws a progress bar to visualise an action taking place.

	Parameter(s):
	0: [STRING] - Text to display
	1: [SCALAR] - Total Time
	2: [STRING] - Animation name - (Default: "AinvPknlMstpSnonWnonDnon_medic_1")
	
	Returns:
	[NOTHING]
		
	Example:
	_a = ["Eating...",10] spawn HGF_fnc_progressBar;
	waitUntil {scriptDone _a};
*/

params [["_text","Test",[""]],["_actionTime",15,[0]],["_animation","AinvPknlMstpSnonWnonDnon_medic_1",[""]]];
private ["_startTime","_totalTime","_progressBar","_progressText"];

if (player getVariable ["isBusy",false]) exitWith {}; // IF PLAYER IS BUSY ALREADY, EXIT
player setVariable ["isBusy",true,true]; // SETS THE PLAYER'S STATUS TO BUSY

disableSerialization;
("HGF_progressBar" call BIS_fnc_rscLayer) cutRsc ["HGF_ProgressBar", "PLAIN", 0.001, false]; // display PROGRESS BAR

_progressBar = ((uiNamespace getVariable "HGF_ProgressBar") displayCtrl 22202);
_progressBar progressSetPosition 0;
_progressText = ((uiNamespace getVariable "HGF_ProgressBar") displayCtrl 22201);
_progressText ctrlSetText _text;


_startTime = time; // Start Time
_totalTime = time + _actionTime; // Expected finish time

waitUntil {

	_progressBar progressSetPosition ((time - _startTime)/_actionTime); // Sets the progress position of the progress bar.
		
	if ( vehicle player == player ) then {
		if (animationState player != _Animation) then {
			player switchMove _Animation; // PLAYS ANIMATION IF PLAYER IS NOT PLAYING THE ANIMATION
			player playMoveNow _Animation;
		};
	};
	
	(!alive player) || (time >= _totalTime) // if player is dead or passed end time, exit
};

player setVariable ["isBusy",false,true]; // SETS THE PLAYER'S STATUS TO NOT BUSY

if (!alive player) then {
	_progressText ctrlSetText "Action Aborted"; // ACTION NOT COMPLETED
	hint "Action aborted";
	_progressBar progressSetPosition 0;
} else {
	//_progressText ctrlSetText "Action Completed"
	hint "Action Completed";
};

sleep 0.2;
("HGF_progressBar" call BIS_fnc_rscLayer) cutText ["", "PLAIN"]; // HIDES PROGRESS BAR