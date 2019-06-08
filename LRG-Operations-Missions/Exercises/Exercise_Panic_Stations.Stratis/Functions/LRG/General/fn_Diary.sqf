/*
	LRG MISSION TEMPLATE
	fn_Diary.sqf
	Author: MitchJC
	Description: Creates Diary Subjects and Records as required.
*/


if (!hasInterface) exitWith {};

player createDiaryRecord ["Diary", ["Long Range Frequencies",
"
<br/><font face='PuristaLight' color='#ffcc00' font size='20' >**LISTENING ON AN UNAUTHORISED FREQUENCY IS STRICTLY PROHIBITED.**</font>
<br/>
<br/>Below is a list of the default Long Range Frequencies. Your role specific frequencies are set on your radio automatically. Ensure you're on the correct frequencies at all times.
<br/>
<br/><font face='PuristaLight' color='#B85450'>Platoon Frequency: 30MHz</font>
<br/><font face='PuristaLight' color='#6C8EBF'>Command Frequency: 40MHz</font>
<br/><font face='PuristaLight' color='#D3D3D3'>Pilot Frequency:	 50MHz</font>
<br/><font face='PuristaLight' color='#D79B00'>FAC Frequency: 60MHz</font>
"
]];

player createDiaryRecord ["Diary", ["Short Range Frequencies",
"
<br/><font face='PuristaLight' color='#ffcc00' font size='20' >**LISTENING ON AN UNAUTHORISED FREQUENCY IS STRICTLY PROHIBITED.**</font>
<br/>
<br/>Below is a list of the default Short Range Frequencies. Your role specific frequencies are set on your radio automatically. Ensure you're on the correct frequencies at all times. Don't forget the MERT Frequency!
<br/>
<br/><font face='PuristaLight' color='#6C8EBF'>Command: 				475MHz</font>
<br/><font face='PuristaLight' color='#6C8EBF'>Command Additional: 		500MHz</font>
<br/>
<br/><font face='PuristaLight' color='#80BF00'>1 Section: 				100MHz</font>
<br/><font face='PuristaLight' color='#80BF00'>1 Section Charlie: 		125MHz</font>
<br/><font face='PuristaLight' color='#80BF00'>1 Section Delta: 		150MHz</font>
<br/>
<br/><font face='PuristaLight' color='#80BF00'>2 Section: 				200MHz</font>
<br/><font face='PuristaLight' color='#80BF00'>2 Section Charlie: 		225MHz</font>
<br/><font face='PuristaLight' color='#80BF00'>2 Section Delta: 		250MHz</font>
<br/>
<br/><font face='PuristaLight' color='#80BF00'>3 Section: 				300MHz</font>
<br/><font face='PuristaLight' color='#80BF00'>3 Section Charlie: 		325MHz</font>
<br/><font face='PuristaLight' color='#80BF00'>3 Section Delta: 		350MHz</font>
<br/>
<br/><font face='PuristaLight' color='#D3D3D3'>909 EAW: 				400MHz</font>
<br/><font face='PuristaLight' color='#D60025' font size='20' >909 EAW MERT:	 		425MHz</font>
"
]];
