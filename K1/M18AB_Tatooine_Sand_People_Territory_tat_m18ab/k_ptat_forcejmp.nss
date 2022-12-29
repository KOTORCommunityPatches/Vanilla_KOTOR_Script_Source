#include "k_inc_utility"

void main() {
	
	location lJmpDroid = GetLocation(GetObjectByTag("tat_droid_run", 0));
	object oDroid = GetObjectByTag("vornsdroid2", 0);
	
	UT_TeleportWholeParty(GetObjectByTag("tat_pc_run", 0), GetObjectByTag("tat_assoc1_run", 0), GetObjectByTag("tat_assoc2_run", 0));
	AssignCommand(oDroid, JumpToLocation(lJmpDroid));
}
