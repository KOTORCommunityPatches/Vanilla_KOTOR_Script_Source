#include "k_inc_utility"

void main() {
	
	object oDoor = GetObjectByTag("lev40_blastdoorf", 0);
	object oMalak = GetObjectByTag("DarthMalak400", 0);
	object oTarget = GetObjectByTag("malak_attack_target2", 0);
	
	UT_ActionPauseConversation(0.8);
	
	DelayCommand(0.5, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	
	DelayCommand(1.0, AssignCommand(oMalak, CutsceneAttack(GetFirstPC(), 115, ATTACK_RESULT_PARRIED, 0)));  // 115 = F2A3, single saber Power Attack
}