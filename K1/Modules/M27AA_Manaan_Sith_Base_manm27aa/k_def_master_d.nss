#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_AI_OFF, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_BOSS_AI, TRUE);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
