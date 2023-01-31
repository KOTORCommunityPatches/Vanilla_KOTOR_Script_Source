#include "k_inc_generic"

void main() {
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_BOSS_AI, TRUE);
	DelayCommand(0.5, ActionPlayAnimation(ANIMATION_LOOPING_DEACTIVATE, 1.0, -1.0));
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}