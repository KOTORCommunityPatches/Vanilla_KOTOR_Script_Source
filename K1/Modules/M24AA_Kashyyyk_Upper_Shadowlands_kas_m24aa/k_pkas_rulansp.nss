#include "k_inc_kas"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE_INTERRUPT, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH, TRUE);
	
	if (GetTag(OBJECT_SELF) == "Rulan4")
		{
			DelayCommand(0.3, ActionForceMoveToLocation(GetLocation(GetObjectByTag("rulan_tach_wp", 0)), TRUE));
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "kas_fake", GetLocation(GetObjectByTag("rulan_tach_wp1", 0))));
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "kas_fake", GetLocation(GetObjectByTag("rulan_tach_wp2", 0))));
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "kas_fake", GetLocation(GetObjectByTag("rulan_tach_wp3", 0))));
			DelayCommand(0.5, UT_CreateObject(OBJECT_TYPE_CREATURE, "kas_fake", GetLocation(GetObjectByTag("rulan_tach_wp4", 0))));
		}
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
