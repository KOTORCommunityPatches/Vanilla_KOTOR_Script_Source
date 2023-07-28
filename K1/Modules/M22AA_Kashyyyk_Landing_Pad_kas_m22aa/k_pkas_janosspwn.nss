#include "k_inc_kas"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_WALK_ONCE, TRUE);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
}
