#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH);
	GN_SetSpawnInCondition(SW_FLAG_MALAK_AI_ON);
	GN_SetSpawnInCondition(SW_FLAG_BOSS_AI);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
