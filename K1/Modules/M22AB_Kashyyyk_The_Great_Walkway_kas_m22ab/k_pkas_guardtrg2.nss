// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_kas"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) == TRUE)
		{
			UT_NPC_InitConversation("kas22_wookg2_01");
			DestroyObject(OBJECT_SELF);
		}
}
