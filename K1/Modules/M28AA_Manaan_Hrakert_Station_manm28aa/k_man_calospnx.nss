#include "k_inc_generic"

void main() {
	
	if (GetTag(OBJECT_SELF) == "CaloNord" || GetTag(OBJECT_SELF) == "g_bandon")
		{
			GN_SetSpawnInCondition(SW_FLAG_BOSS_AI, TRUE);
		}
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	SetNPCAIStyle(OBJECT_SELF, NPC_AISTYLE_GRENADE_THROWER);
	GN_WalkWayPoints();
}
