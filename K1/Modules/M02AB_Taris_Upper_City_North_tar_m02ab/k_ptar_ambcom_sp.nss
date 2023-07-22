#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_COMMONER_BEHAVIOR, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS, TRUE);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
