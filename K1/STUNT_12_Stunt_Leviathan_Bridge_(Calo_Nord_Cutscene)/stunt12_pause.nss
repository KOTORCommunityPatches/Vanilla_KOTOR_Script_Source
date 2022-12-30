#include "k_inc_utility"

void main() {
	
	object oSaul = GetObjectByTag("stunt12_saul", 0);
	object oWP = GetWaypointByTag("stunt12_wp_04");
	
	UT_ActionPauseConversation(3.5);
	
	AssignCommand(oSaul, SetFacingPoint(GetPosition(oWP)));
}
