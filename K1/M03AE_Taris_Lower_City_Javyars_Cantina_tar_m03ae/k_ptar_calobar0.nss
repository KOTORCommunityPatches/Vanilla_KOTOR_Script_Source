#include "k_inc_utility"

void main() {

	object oRodian = GetObjectByTag("taproomvic031", 0);
	object oTwilek1 = GetObjectByTag("taproomvic032", 0);
	object oTwilek2 = GetObjectByTag("taproomvic033", 0);
	//object oCalo = GetObjectByTag("calo031", 0);
	object oWP_PC = GetObjectByTag("TAR_JUMP0_WP", 0);
	object oWP_PM1 = GetObjectByTag("TAR_JUMP1_WP", 0);
	object oWP_PM2 = GetObjectByTag("TAR_JUMP2_WP", 0);
	
	SetPartyLeader(NPC_PLAYER);
	DelayCommand(0.2, UT_TeleportWholeParty(oWP_PC, oWP_PM1, oWP_PM2));
	
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
	
	AssignCommand(oTwilek1, ActionMoveToObject(GetObjectByTag("tar03_wpvic0", 0), 0, 1.0));
	DelayCommand(1.0, AssignCommand(oRodian, ActionMoveToObject(GetObjectByTag("tar03_wpvic1", 0), 0, 1.0)));
	DelayCommand(2.0, AssignCommand(oTwilek2, ActionMoveToObject(GetObjectByTag("tar03_wpvic2", 0), 0, 1.0)));
}
