player lookAt LaptopB;
player setDir (getDir LaptopB - 90);
player setPosASL (LaptopB modelToWorld [0,0.85,0]);
player switchMove "acts_millerDisarming_deskloop";  
sleep 15.865;
player switchMove ""; 
player lookAt LaptopB;
