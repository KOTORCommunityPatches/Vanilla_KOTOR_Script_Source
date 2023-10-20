// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (IsObjectPartyMember(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			CancelCombat(oEntering);
			
			UT_NPC_InitConversation("canderous043", "", GetObjectByTag("tar04_wpcanparty", 0));
		}
}
