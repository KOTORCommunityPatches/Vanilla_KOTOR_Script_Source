// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	SetGlobalBoolean("MAN_STEAM_OFF", TRUE);
 	SetGlobalBoolean("MAN_ST", TRUE);
 	BarkString(OBJECT_INVALID, 41855);
 	
	int nCnt = 1;
 	object oVent = GetObjectByTag("man27_steam0" + IntToString(nCnt), 0);
 	
	while (GetIsObjectValid(oVent))
		{
			SetVentActive(FALSE, oVent);
			
			nCnt++;
			
			oVent = GetObjectByTag("man27_steam0" + IntToString(nCnt), 0);
		}
 	
	nCnt = 0;
 	
	object oSteamSnd = GetObjectByTag("steamroomoneshots", nCnt);
 	
	while (GetIsObjectValid(oSteamSnd))
		{
			SoundObjectStop(oSteamSnd);
			
			nCnt++;
			
			oSteamSnd = GetObjectByTag("steamroomoneshots", nCnt);
		}
 	
	nCnt = 0;
 	
	oSteamSnd = GetObjectByTag("steamroomloopbed", nCnt);
 	
	while (GetIsObjectValid(oSteamSnd))
		{
			SoundObjectStop(oSteamSnd);
			
			nCnt++;
			
			oSteamSnd = GetObjectByTag("steamroomloopbed", nCnt);
		}
 }
