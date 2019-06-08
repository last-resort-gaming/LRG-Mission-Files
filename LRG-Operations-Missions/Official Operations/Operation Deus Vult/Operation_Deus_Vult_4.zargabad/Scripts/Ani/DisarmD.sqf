player lookAt LaptopD;
player setDir (getDir LaptopD - 90);
player setPosASL (LaptopD modelToWorld [0,0.85,0]);
player switchMove "acts_millerDisarming_deskloop";  
sleep 15.865;
player switchMove ""; 
player lookAt LaptopD;
