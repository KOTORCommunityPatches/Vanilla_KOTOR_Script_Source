#include "k_inc_generic"

void main() {
	GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS_MOBILE);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
	GN_SetSpawnInCondition(SW_FLAG_AI_OFF);
}
