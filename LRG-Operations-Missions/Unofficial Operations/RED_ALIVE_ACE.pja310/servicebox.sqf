_box = _this select 0; //Object used as "Servicebox"
_time = _this select 1; // Time of Service. 1 = Full service takes 30sec. But you almost never need a full service.. 

while{true} do
{
sleep(2);
_scan = count (nearestObjects [_box, ["LandVehicle","Air"], 20]);
_veh = nearestObjects [_box, ["LandVehicle","Air"], 20] select 0;
if(_scan > 0) then
{
//Damage
_damage = damage _veh;
while{_damage != 0} do {_veh setDamage (_damage - 0.1); sleep(_time); _damage = damage _veh;};
//Fuel
_fuel = fuel _veh;
while{_fuel != 1} do {_veh setFuel (_fuel + 0.1); sleep(_time); _fuel = fuel _veh;};
//Ammunition
_veh setVehicleAmmo 0;
_ammo = 0;
for "_ammo" from 1 to 10 do {_ammo + 1; _veh setVehicleAmmo _ammo;sleep(_time)};
}
else{}
}