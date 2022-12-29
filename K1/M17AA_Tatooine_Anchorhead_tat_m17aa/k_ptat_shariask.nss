#include "k_inc_tat"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) == TRUE && GetSharinaWaitLocal() == TRUE)
		{
			UT_NPC_InitConversation("tat17_03shari_01", "", OBJECT_INVALID);
			DestroyObject(OBJECT_SELF);
		}
}
