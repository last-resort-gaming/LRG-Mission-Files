if (isServer) then {
	RND_Number_Outro = Ceil random 10;
	publicVariable "RND_Number_Outro";
	};

? (RND_Number_Outro) <= 1 : goto "P1";
? (RND_Number_Outro) <= 2 : goto "P2";
? (RND_Number_Outro) <= 3 : goto "P3";
? (RND_Number_Outro) <= 4 : goto "P4";
? (RND_Number_Outro) <= 5 : goto "P5";
? (RND_Number_Outro) <= 6 : goto "P6";
? (RND_Number_Outro) <= 7 : goto "P7";
? (RND_Number_Outro) <= 8 : goto "P8";
? (RND_Number_Outro) <= 9 : goto "P9";
? (RND_Number_Outro) <= 10 : goto "P10";


#P1
[] exec "outro\outro_01.sqs";
exit;

#P2
[] exec "outro\outro_02.sqs";
exit;

#P3
[] exec "outro\outro_03.sqs";
exit;

#P4
[] exec "outro\outro_04.sqs";
exit;

#P5
[] exec "outro\outro_05.sqs";
exit;

#P6
[] exec "outro\outro_06.sqs";
exit;

#P7
[] exec "outro\outro_07.sqs";
exit;

#P8
[] exec "outro\outro_08.sqs";
exit;

#P9
[] exec "outro\outro_09.sqs";
exit;

#P10
[] exec "outro\outro_10.sqs";
exit;