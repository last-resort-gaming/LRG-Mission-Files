/*
    File: eh_MouseButtonDown.sqf
    Author: Aaron Clark <vbawol>
    Date: 2020-01-29
    Last Update: 2020-05-27
    Public: No

    Description:
		Mouse button down handler.

    Parameter(s):
		_displayorcontrol - Description [DISPLAY|CONTROL]
		_button - Description [NUMBER]
		_xpos - Description [NUMBER]
		_ypos - Description [NUMBER]
		_shift - Description [BOOL]
		_ctrl - Description [BOOL]
		_alt - Description [BOOL]

    Returns: nothing

    Example(s):
		Not called directly.
*/

params
[
	"_displayorcontrol",
	"_button",
	"_xpos",
	"_ypos",
	"_shift",
	"_ctrl",
	"_alt"
];

switch (_button) do
{
	// LMB
	case (0):
	{
		
	};
	// RMB
	case (1):
	{

	};
	// MMB
	case (2):
	{
	};
};
