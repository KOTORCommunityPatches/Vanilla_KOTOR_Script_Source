#include "k_inc_utility"

void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oWP = GetNearestObjectByTag("sta_pc_cutscene_jump", oMalak, 1);
	object oPC = GetFirstPC();
	location lJump = GetLocation(oWP);
	
	UT_ActionPauseConversation(1.0);

	int nTalk = GetGlobalNumber("STA_MALAK_TALK") + 1;
	
	SetCommandable(1, oMalak);
	
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oPC, JumpToLocation(lJump)));
	DelayCommand(0.3, AssignCommand(oMalak, SetFacingPoint(GetPosition(oPC))));
	
	SetGlobalNumber("STA_MALAK_TALK", nTalk);
}
