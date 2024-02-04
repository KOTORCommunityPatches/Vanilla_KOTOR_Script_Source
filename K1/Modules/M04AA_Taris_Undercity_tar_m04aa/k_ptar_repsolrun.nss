#include "k_inc_tar"

void main() {
	
	object oRepSol = GetObjectByTag("REPUBLICSO", 0);
	
	Db_PostString("OWNER - " + GetTag(OBJECT_SELF), 5, 5, 5.0);
	
	SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
	
	AssignCommand(oRepSol, ActionMoveToObject(GetObjectByTag("tar04_repsolflee", 0), TRUE));
	
	ActionPauseConversation();
}
