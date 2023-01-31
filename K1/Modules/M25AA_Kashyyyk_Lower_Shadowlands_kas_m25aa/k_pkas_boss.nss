#include "k_inc_utility"

void main() {
	
	location lSpawn = GetLocation(GetWaypointByTag("BP_COMMAND_WP"));
	
	UT_ActionPauseConversation(3.0);
	
	CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandcomm", lSpawn);
}