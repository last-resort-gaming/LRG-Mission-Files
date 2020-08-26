params ["_thisList"];

if !((getConnectedUAV player) in _thisList) exitWith {false};

true;