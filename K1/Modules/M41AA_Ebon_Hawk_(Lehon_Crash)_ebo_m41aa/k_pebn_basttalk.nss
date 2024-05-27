// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable. Appears to use an earlier version of k_inc_ebonhawk.

#include "k_inc_debug"
#include "k_inc_utility"
#include "k_inc_ebonhawk"

void main() {
	
	Db_PostString("Bastila Talk Script Firing", 10, 10, 4.0);
	
	int nGlobal = GetGlobalNumber("K_SWG_BASTILA");
	int nMap = GetGlobalNumber("K_STAR_MAP");
	object oBastila = GetObjectByTag("Bastila", 0);
	object oEntering = GetEnteringObject();
	int nTalked = UT_GetTalkedToBooleanFlag(OBJECT_SELF);
	
	DelayCommand(2.0, EBO_BastilaStartConversation());
	
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
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, 1);
			SetGlobalNumber("Ebn_Bast_ForceTalk", 3);
		}
}
