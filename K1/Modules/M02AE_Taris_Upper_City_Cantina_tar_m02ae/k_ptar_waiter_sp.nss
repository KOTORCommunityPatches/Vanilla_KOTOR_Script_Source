#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_RANDOM);
	GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_STOP_LONG);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
