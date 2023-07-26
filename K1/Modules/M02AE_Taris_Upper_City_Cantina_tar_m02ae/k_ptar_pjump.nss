#include "k_inc_generic"
#include "k_inc_tar"

void main() {
	
	object WP1 = GetObjectByTag("BP_ASSOC0_WP", 0);
	object WP2 = GetObjectByTag("BP_ASSOC1_WP", 0);
	object WP3 = GetObjectByTag("BP_ASSOC2_WP", 0);
	
	UT_TeleportWholeParty(WP1, WP2, WP3);
	
	object oDuncan = GetObjectByTag("DeadeyeDun021", 0);
	object oGerlon = GetObjectByTag("GerlonTwof021", 0);
	
	AssignCommand(oDuncan, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, TRUE));
	AssignCommand(oGerlon, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, TRUE));
}
