#include "k_inc_tar"

void main() {
	
	object oRodian1 = GetObjectByTag("rodian033", 0);
	object oRodian2 = GetObjectByTag("rodian034", 0);
	object oMission = GetObjectByTag("mission031", 0);
	
	UT_SetTalkedToBooleanFlag(oMission, TRUE);
	
	AssignCommand(oRodian1, ActionMoveToObject(GetObjectByTag("tar03_wprodiana", 0)));
	DelayCommand(1.0, AssignCommand(oRodian2, ActionMoveToObject(GetObjectByTag("tar03_wprodianb", 0))));
	
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}
