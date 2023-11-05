// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) && GetGender(GetFirstPC()) == GENDER_FEMALE && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			UT_NPC_InitConversation("Jergan021", "", OBJECT_INVALID);
		}
}
