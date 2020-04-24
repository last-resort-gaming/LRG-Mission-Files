waitUntil {!(isNull player)};
waitUntil {player==player};
switch (side player) do
{

player createDiaryRecord["Diary", ["CREDITS", "Mission made by RueLight <img image='pics\ruelight.paa' width='80' height='80'/><br/> <br/>
Scripts:<br/>
Civilian Occupation System (COS) v0.5 by BangaBob (edited)<br/>
Enemy Occupation System (EOS) v1.98 by BangaBob (edited)<br/>
THUNDERBOLT Script by ALIAS (SteamID 687941412)<br/>
Roadflare Script by ALIAS (SteamID 809383526)<br/>
Flare Fix Script by ALIAS (SteamID 778433432)<br/>
Big Thanks to ALIAS and MOSkorpion!<br/> <br/>
Info: Red chemlights are road flares."]];

player createDiaryRecord["Diary", ["Where do I find maps?!", "------------------------------------ Possible Map Destinations ------------------------------------<br/> <br/>
<img image='pics\loot_1.jpg' width='180' height='90'/> <img image='pics\loot_2.jpg' width='180' height='90'/><br/> <br/>
<img image='pics\loot_3.jpg' width='180' height='90'/> <img image='pics\loot_4.jpg' width='180' height='90'/><br/> <br/>
<img image='pics\loot_5.jpg' width='180' height='90'/> <img image='pics\loot_6.jpg' width='180' height='90'/><br/> <br/>
<img image='pics\loot_7.jpg' width='180' height='90'/> <img image='pics\loot_8.jpg' width='180' height='90'/><br/> <br/>
<img image='pics\loot_9.jpg' width='180' height='90'/> <img image='pics\loot_10.jpg' width='180' height='90'/>"]];

player createDiaryRecord["Diary", ["SITUATION", "One week ago we left Tanoa and ended up in a refugee camp. From there we started our long journey back home on a plane, but something went wrong... again...<br/> <br/>
Most of us slept when we got hit by something. We heard a loud BANG and shortly after one of our engines lost power. The aircraft was badly damaged and went into a spin, quickly losing altitude! These are the last moments we can remember before the crash.<br/> <br/>
Some of us survived, others not. It is happening again... we need to find a way out of this hell...<br/> <br/>
<img image='pics\plane_brief.jpg' width='370' height='185'/>"]];

tskobj1 = player createSimpleTask["Find a nearby village and locate a map!"];
tskobj1 setSimpleTaskDescription["We have no map and no idea what's going on! That why we have to get to the nearest town or village and check the situation.<br/> <br/>
Search at gas stations, churches, small chapels, industrial buildings, supermarkets, kiosks, barracks, bus stops or car trunk for a map of Malden. We need to know where we are and where to find a satelite phone to call for help.<br/><img image='pics\map_brief.paa' width='130' height='60'/><br/> <br/>
Beware of armed mobs and militia, they are well armed! And check your targets! We don't want any civilian casualties.", "Find a nearby village and locate a map!", "Find a nearby village and locate a map!"];

};
