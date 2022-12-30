#include "k_inc_generic"

void main() {
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED, TRUE);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
	GN_SetSpawnInCondition(SW_FLAG_BOSS_AI, TRUE);
}
