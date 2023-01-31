#include "k_inc_utility"

void main() {
	
	object oDoor = GetNearestObjectByTag("lev40_blastdoorg", OBJECT_SELF, 1);
	object oTrooperA = GetNearestObjectByTag("lev40_sithtroopa", OBJECT_SELF, 1);
	object oEntering = GetEnteringObject();
	object oTrooperB;
	int nCount;
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			AssignCommand(oDoor, ActionOpenDoor(oDoor));
			DelayCommand(1.0, AssignCommand(oTrooperA, ActionAttack(oEntering)));
			
			nCount = 1;
			
			while (nCount < 4)
				{
					oTrooperB = GetNearestObjectByTag("lev40_sithtroopb", OBJECT_SELF, nCount);
					
					DelayCommand(3.0, AssignCommand(oTrooperB, ActionMoveToObject(GetObjectByTag("lev40_wpambush", 0), TRUE)));
					
					nCount++;
				}
		}
}