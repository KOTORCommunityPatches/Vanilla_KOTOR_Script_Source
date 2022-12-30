#include "k_inc_utility"

void main() {
	
	AssignCommand(GetFirstPC(), ClearAllEffects());
	
	UT_TeleportPartyMember(GetObjectByTag("carth", 0), GetLocation(GetObjectByTag("lev40_wpcarthfin", 0)));
	UT_TeleportPartyMember(GetFirstPC(), GetLocation(GetObjectByTag("lev40_wppcfin", 0)));
}
