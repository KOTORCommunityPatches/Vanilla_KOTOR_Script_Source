#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	object oDoor = GetNearestObjectByTag("lev40_blastdoorf", OBJECT_SELF, 1);
	object oMalak = GetObjectByTag("darthmalak400", 0);
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			AssignCommand(oDoor, ActionCloseDoor(oDoor));
			SetLocked(oDoor, TRUE);
			
			ChangeToStandardFaction(oMalak, STANDARD_FACTION_HOSTILE_1);
		}
}