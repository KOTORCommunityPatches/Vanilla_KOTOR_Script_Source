#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS_MOBILE, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE, TRUE);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
