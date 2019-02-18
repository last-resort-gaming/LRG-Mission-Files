/*
Function: YAINA_fnc_diarySetup

Description:
	Initializes the diary with server rules, information and credits
	during the postInit phase.

Parameters:
	None

Return Values:
	None

Examples:
    Nothing to see here

Author:
	Sekwah
*/

if (!hasInterface) exitWith {};

player createDiarySubject ["Last Resort Gaming", "Last Resort Gaming"];
player createDiaryRecord ["Last Resort Gaming", ["Teamspeak",
"
<br/>
<font face='PuristaLight' color='#D3D3D3'>Teamspeak is only used when we're on TFAR. This is a comms mod for Arma 3. If you're ever on an LRG Server that's using TFAR, use the following link.</font>
<br/>
<br/>Teamspeak:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://TS.LastResortGaming.net'"">TS.LastResortGaming.net</execute></font>

"
]];

player createDiaryRecord ["Last Resort Gaming", ["Forums",
"
<br/>
<font face='PuristaLight' color='#D3D3D3'>Our Forums contain all the information on how to apply and also links to calendar events.</font>
<br/>
<br/>Forums:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://www.LastResortGaming.net'"">www.LastResortGaming.net</execute></font>

"
]];
player createDiaryRecord ["Last Resort Gaming", ["Discord",
"
<br/>
<font face='PuristaLight' color='#D3D3D3'>Discord is our Primary Communication Service. It's open to anyone, so feel free to join!</font>
<br/>
<br/>Discord:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://Discord.LastResortGaming.net'"">Discord.LastResortGaming.net</execute></font>

"
]];
player createDiaryRecord ["Last Resort Gaming", ["Apply",
"
<br/>
<font face='PuristaLight' color='#D3D3D3'>LRG is always on the lookout for mature players that wish to join. If you think you have what it takes, submit an application and get involved! For more info, speak to a member or contact us on Discord.</font>
<br/>
<br/>Discord:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'https://goo.gl/forms/zyC8XDCFaU9o5y0k2'"">LRG Application Form</execute></font>
"
]];

player createDiaryRecord ["Last Resort Gaming", ["About Us",
"
<br/>
<font face='PuristaLight' color='#D3D3D3'>Last Resort Gaming is a Gaming Community founded in Decemeber 2015. We play all sorts of games but prodominently Arma 3. We host private operations every week and we're always welcome to new applicants. No matter the time of day, there's always someone around on Discord, you're more than welcome to join us.</font>

"
]];

player createDiarySubject ["Optional Mods", "Optional Mods"];
player createDiaryRecord ["Optional Mods", ["Optional Mods",
"
<br/>
<font face='PuristaLight' color='#D3D3D3'>The following Optional Mods are accepted on all LRG Servers.</font>
<br/>
<br/>badbenson:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://steamcommunity.com/sharedfiles/filedetails/?id=333310405'"">Enhanced Movement</execute></font>
<br/>CBAP_A3:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://steamcommunity.com/sharedfiles/filedetails/?id=450814997'"">CBA_A3</execute></font>
<br/>dslyecxi:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://steamcommunity.com/sharedfiles/filedetails/?id=498740884'"">ShackTac User Interface</execute></font>
<br/>LAxemann:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://steamcommunity.com/sharedfiles/filedetails/?id=825179978'"">Enhanced Soundscape</execute>,<br/>    <execute expression=""copyToClipboard 'http://steamcommunity.com/sharedfiles/filedetails/?id=825181638'"">DynaSound 2</execute></font>
<br/>LordJarhead:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://steamcommunity.com/sharedfiles/filedetails/?id=861133494'"">JSRS SOUNDMOD</execute></font>
<br/>Paladin:<br/><font face='PuristaLight' color='#D3D3D3'>    <execute expression=""copyToClipboard 'http://steamcommunity.com/sharedfiles/filedetails/?id=767380317'"">Blastcore Edited (standalone version)</execute></font>
"
]];

player createDiarySubject ["Server Rules", "Server Rules" ];
player createDiaryRecord ["Server Rules", ["General Rules",
"
<font face='PuristaLight' color='#D3D3D3'>
<br/>
This Server is designed for those new to the game. We want to keep it a friendly place for people to learn, therefore some common rules are not to be broken:
<br/>
<br />1. Hacking and mission exploitation
<br />2. Intentional team-killing
<br />3. Excessive unintentional team-killing
<br />4. Unnecessary destruction of friendly vehicles
<br />5. Verbal abuse and bullying
<br />6. Griefing and obstructive play.
<br />7. Excessive mic spamming, music playing
<br />8. Ignroing directions from an admin
<br />
<br />If you see a player in violation of the above, contact an LRG member or PM a member on Discord at <execute expression=""copyToClipboard 'http://Discord.LastResortGaming.net'"">lastresortgaming.net</execute>
</font>
"
]];