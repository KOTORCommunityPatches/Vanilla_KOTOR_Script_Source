#include "k_inc_utility"

void main() {
	
	UT_ActionPauseConversation(1.5);
	UT_TeleportWholeParty(GetObjectByTag("tar_igear_pc0_jump_wp", 0), GetObjectByTag("tar_igear_pc1_jump_wp", 0), GetObjectByTag("tar_igear_pc2_jump_wp", 0));
}
