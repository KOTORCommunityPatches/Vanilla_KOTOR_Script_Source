// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"

void SetShaarGlobal(int nState) {
	SetGlobalNumber("KOR33_SHAARDAN", nState);
}

void main() {
	
	SetShaarGlobal(2);
	
	object oStudent1 = GetObjectByTag("k33_shastudent1", 0);
	object oStudent2 = GetObjectByTag("k33_shastudent2", 0);
	object oStudent3 = GetObjectByTag("k33_shastudent3", 0);
	object oWP = GetObjectByTag("k33a_way_shavic", 0);
	object oShaarExit = GetObjectByTag("k33a_way_shaarda", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oStudent2, ActionMoveToObject(oWP, TRUE));
	AssignCommand(oStudent3, ActionMoveToObject(oWP, TRUE));
	AssignCommand(oStudent1, ActionMoveToObject(oWP, TRUE));
	
	ActionPlayAnimation(ANIMATION_FIREFORGET_TAUNT);
	
	ActionMoveToObject(oShaarExit);
	
	ActionResumeConversation();
}
