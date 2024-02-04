// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	object oInvis = GetObjectByTag("tar04_reptalker", 0);
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			Db_PostString("TALKIE TALKIE", 5, 5, 5.0);
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			AssignCommand(oInvis, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
