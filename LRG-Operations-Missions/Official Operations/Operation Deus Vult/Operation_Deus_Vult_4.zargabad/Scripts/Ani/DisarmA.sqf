player lookAt LaptopA;
player setDir (getDir LaptopA - 90);
player setPosASL (LaptopA modelToWorld [0,0.85,0]);
player switchMove "acts_millerDisarming_deskloop";  
sleep 15.865;
player switchMove ""; 
player lookAt LaptopA;
