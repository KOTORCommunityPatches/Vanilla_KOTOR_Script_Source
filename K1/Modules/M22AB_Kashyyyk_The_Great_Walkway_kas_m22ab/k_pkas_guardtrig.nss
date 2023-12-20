// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_kas"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (IsObjectPartyMember(oEntering) == TRUE)
		{
			if (GetChuundarTalkGlobal() == TRUE)
				{
					DestroyObject(OBJECT_SELF);
				}
				else
					{
						UT_NPC_InitConversation("kas22_wookg1_01");
					}
		}
}
