// Byte code does not match
#include "k_inc_tar"

void main() {
	
	object oEntering = GetEnteringObject();
	object oInvis = GetObjectByTag("tar03_mistalker", 0);
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && !GetGlobalBoolean("Tar_GadonMission"))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
		}
}
