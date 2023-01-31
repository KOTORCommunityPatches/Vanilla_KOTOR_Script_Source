// Byte code does not match
#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			UT_NPC_InitConversation("darkjedi441", "unk44_darkjed001", OBJECT_INVALID);
		}
}