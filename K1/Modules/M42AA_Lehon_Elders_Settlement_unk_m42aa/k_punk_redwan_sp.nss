
#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_RANDOM, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_STOP_RANDOM, TRUE);
	GN_SetWalkWayPointsSeries(1);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}