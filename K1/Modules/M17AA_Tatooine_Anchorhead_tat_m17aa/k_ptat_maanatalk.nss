#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	object oMaana = GetObjectByTag("tat17aa_bastplot", 0);
	
	if (GetIsObjectValid(oMaana) == TRUE) && GetIsPC(oEntering))
		{
			UT_NPC_InitConversation("tat17aa_bastplot", "", OBJECT_INVALID);
			DestroyObject(OBJECT_SELF);
		}
}
