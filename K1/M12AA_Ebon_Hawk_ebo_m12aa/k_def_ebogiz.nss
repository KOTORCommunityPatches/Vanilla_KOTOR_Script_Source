#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	
	if (GetStandardFaction(OBJECT_SELF) == STANDARD_FACTION_FRIENDLY_2
	|| GetStandardFaction(OBJECT_SELF) == STANDARD_FACTION_HOSTILE_1
	|| GetStandardFaction(OBJECT_SELF) == STANDARD_FACTION_HOSTILE_2
	|| GetStandardFaction(OBJECT_SELF) == STANDARD_FACTION_INSANE)
		{
			DestroyObject(OBJECT_SELF);
		}
}
