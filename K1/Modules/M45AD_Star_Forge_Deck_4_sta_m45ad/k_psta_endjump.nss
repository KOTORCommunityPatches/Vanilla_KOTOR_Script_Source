#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	location lPC = GetLocation(GetObjectByTag("sta_pc_dead", 0));
	location lMalak = GetLocation(GetObjectByTag("sta_malak_dead", 0));
	
	UT_ActionPauseConversation(3.0);
	
	SetCommandable(TRUE, oMalak);
	AssignCommand(oMalak, PlayAnimation(ANIMATION_LOOPING_KNEEL_TALK_SAD, 1.0, -1.0));
	DelayCommand(0.2, AssignCommand(oPC, JumpToLocation(lPC)));
	DelayCommand(0.2, AssignCommand(oMalak, JumpToLocation(lMalak)));
	DelayCommand(0.5, AssignCommand(oPC, JumpToLocation(lPC)));
	DelayCommand(0.5, AssignCommand(oMalak, JumpToLocation(lMalak)));
}
