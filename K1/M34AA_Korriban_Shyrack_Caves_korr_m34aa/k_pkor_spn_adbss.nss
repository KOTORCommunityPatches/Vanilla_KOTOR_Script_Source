#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_BOSS_AI, TRUE);
	DelayCommand(0.5, ExecuteScript("k_def_buff", OBJECT_SELF, -1));
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
