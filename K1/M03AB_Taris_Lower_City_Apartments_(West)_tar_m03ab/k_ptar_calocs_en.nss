#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	object oEntering = GetEnteringObject();
	object oInvis = GetObjectByTag("tar03_calotalker", 0);
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			Db_PostString("CALO CUTSCENE", 5, 5, 5.0);
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
		}
}
