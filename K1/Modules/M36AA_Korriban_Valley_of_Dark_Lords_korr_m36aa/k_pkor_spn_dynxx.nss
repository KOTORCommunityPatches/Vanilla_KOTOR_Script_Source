#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_DYNAMIC_COMBAT_ZONE);
	GN_SetSpawnInCondition(SW_FLAG_BOSS_AI);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}