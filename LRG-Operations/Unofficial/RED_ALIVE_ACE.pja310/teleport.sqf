cutText ["","BLACK OUT"];
Sleep 5;

_dest = (_this select 3) select 0;

_dir = random 359;

player SetPos [(getPos _dest select 0)-10*sin(_dir),(getPos _dest select 1)-10*cos(_dir)];

cutText ["","BLACK IN"];
