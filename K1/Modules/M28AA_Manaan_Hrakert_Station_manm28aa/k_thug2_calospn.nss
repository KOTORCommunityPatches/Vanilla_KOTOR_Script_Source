#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_PERCEPTION, TRUE);
	
	if (GetTag(OBJECT_SELF) == "CaloNord" || GetTag(OBJECT_SELF) == "g_bandon")
		{
			GN_SetSpawnInCondition(SW_FLAG_BOSS_AI, TRUE);
		}
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
	SetNPCAIStyle(OBJECT_SELF, NPC_AISTYLE_GRENADE_THROWER);
}
