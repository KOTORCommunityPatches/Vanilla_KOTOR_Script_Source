#include "k_inc_utility"

void main() {
	
	int nGlobal = GetGlobalNumber("K_SWG_BASTILA");
	int nMap = GetGlobalNumber("K_STAR_MAP");
	object oBastila = GetObjectByTag("Bastila", 0);
	object oEntering = GetEnteringObject();
	int nTalked = UT_GetTalkedToBooleanFlag(OBJECT_SELF);
	
	if ((nGlobal < 4 && nMap == 30) || (nGlobal < 6 && nMap == 40))
		{
			if (GetIsPC(oEntering) && nTalked == FALSE)
				{
					AssignCommand(oBastila, ActionStartConversation(oEntering, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
					SetGlobalNumber("Ebn_Bast_ForceTalk", 1);
				}
		}
	
	if (nGlobal < 6 && nMap == 40 && GetIsPC(oEntering))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			SetGlobalNumber("Ebn_Bast_ForceTalk", 3);
		}
}
