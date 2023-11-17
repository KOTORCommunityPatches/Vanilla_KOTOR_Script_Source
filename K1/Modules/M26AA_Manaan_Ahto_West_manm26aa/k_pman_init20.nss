// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	if (IsObjectPartyMember(GetEnteringObject()) && UT_GetTalkedToBooleanFlag(GetObjectByTag("man26_shaelas", 0)) == FALSE && HasNeverTriggered())
		{
			UT_NPC_InitConversation("man26_shaelas", "", OBJECT_INVALID);
		}
 }
