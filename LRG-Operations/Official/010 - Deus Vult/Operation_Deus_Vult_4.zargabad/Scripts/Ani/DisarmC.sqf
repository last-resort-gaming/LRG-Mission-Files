player lookAt LaptopC;
player setDir (getDir LaptopC - 90);
player setPosASL (LaptopC modelToWorld [0,0.85,0]);
player switchMove "acts_millerDisarming_deskloop";  
sleep 15.865;
player switchMove ""; 
player lookAt LaptopC;
