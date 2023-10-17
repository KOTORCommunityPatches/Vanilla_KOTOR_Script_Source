#include "k_inc_kas"

void SetWalkNumber(int nNum) {
	SetLocalNumber(OBJECT_SELF, WALKWAYS_SERIES_NUMBER, nNum);
}

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_RANDOM);
	GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_STOP_RANDOM);
	SetWalkNumber(1);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
