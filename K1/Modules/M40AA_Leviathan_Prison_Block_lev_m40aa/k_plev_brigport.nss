// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_lev"

void main() {
	
	object oObject;
	object oWP;
	int nCnt = 0;
	
	while (GetIsObjectValid(oObject = GetObjectByTag("lev40_cell09", nCnt)))
		{
			Db_PostString("UNLOCKING CELL - " + GetTag(oObject), 5, 5 + nCnt, 5.0);
			
			SetLocked(oObject, FALSE);
			DelayCommand(0.5, AssignCommand(oObject, ActionOpenDoor(oObject)));
			
			nCnt++;
		}
	
	nCnt = 0;
	
	while (GetIsObjectValid(oObject = GetObjectByTag("lev40_guard2", nCnt)))
		{
			oWP = GetObjectByTag("lev40_wpguard09_0" + IntToString(nCnt + 1), 0);
			
			DelayCommand(nCnt * 1.0, AssignCommand(oObject, ActionMoveToObject(oWP, TRUE, 1.0)));
			
			nCnt++;
		}
}
