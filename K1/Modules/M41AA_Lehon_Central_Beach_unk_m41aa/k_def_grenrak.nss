#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH, TRUE);
	SetNPCAIStyle(OBJECT_SELF, NPC_AISTYLE_GRENADE_THROWER);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
