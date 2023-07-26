#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_ATTACKED, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_COMBAT_ROUND_END, TRUE);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
