// GetStringByStrRef hotfix

#include "k_inc_man"

void main() {
 	
	location lSith = GetLocation(GetObjectByTag("wp_man26_sithlaw", 0));
 	location lRep = GetLocation(GetObjectByTag("wp_man26_replaw", 0));
 	
	AssignCommand(GetObjectByTag("man26_repac", 0), JumpToLocation(lSith));
 	AssignCommand(GetObjectByTag("man26_sithac", 0), JumpToLocation(lRep));
 	
	TurnOnPartyAI();
 	
	if (GetGlobalBoolean("MAN_EXILED"))
		{
			StartNewModule("ebo_m12aa");
		}
 	
	int nJudge = 1;
 	int bLock = 1;
 	object oJudge = GetObjectByTag("man26_seljud" + IntToString(nJudge), 0);
 	
	while (GetIsObjectValid(oJudge))
		{
			SetLockOrientationInDialog(oJudge, bLock);
			
			nJudge++;
			
			oJudge = GetObjectByTag(("man26_seljud" + IntToString(nJudge)), 0);
		}
 	
	SetLockOrientationInDialog(GetObjectByTag("man26_sithac", 0), bLock);
 	SetLockOrientationInDialog(GetFirstPC(), bLock);
}
