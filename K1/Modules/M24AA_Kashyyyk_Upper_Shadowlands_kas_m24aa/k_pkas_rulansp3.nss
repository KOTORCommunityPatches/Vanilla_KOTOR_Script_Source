#include "k_inc_generic"

void CreateNPC(int nType, string sResRef, location lLocation) {
	object oSpwn = CreateObject(nType, sResRef, lLocation);
}

void main() {
	
	GN_GetSpawnInCondition(SW_FLAG_AMBIENT_ANIMATIONS_MOBILE, TRUE);
	GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT, TRUE);
	GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH, TRUE);
	
	if (GetTag(OBJECT_SELF) == "Rulan4")
		{
			DelayCommand(0.3, PlaySound("c_tach_bat1"));
			DelayCommand(0.3, ActionForceMoveToLocation(GetLocation(GetObjectByTag("rulan_tach_wp", 0)), TRUE));
			DelayCommand(0.5, CreateNPC(OBJECT_TYPE_CREATURE, "kas_fake", GetLocation(GetObjectByTag("rulan_tach_wp1", 0))));
			DelayCommand(0.5, CreateNPC(OBJECT_TYPE_CREATURE, "kas_fake", GetLocation(GetObjectByTag("rulan_tach_wp2", 0))));
			DelayCommand(0.5, CreateNPC(OBJECT_TYPE_CREATURE, "kas_fake", GetLocation(GetObjectByTag("rulan_tach_wp3", 0))));
			DelayCommand(0.5, CreateNPC(OBJECT_TYPE_CREATURE, "kas_fake", GetLocation(GetObjectByTag("rulan_tach_wp4", 0))));
		}
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}