#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (!UT_IsObjectPC(oEntering))
		{
			SetGlobalNumber("tar_duel", GetGlobalNumber("tar_duel") + 1);
			
			AssignCommand(oEntering, ActionMoveToObject(GetObjectByTag("tar02_duelstartpt", 0)));
		}
}
