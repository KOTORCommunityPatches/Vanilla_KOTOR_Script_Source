// Byte code does not match
#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	object oInvis = GetObjectByTag("bp_deul_conv", 0);
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			AssignCommand(oInvis, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
