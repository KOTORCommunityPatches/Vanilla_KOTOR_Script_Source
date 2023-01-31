#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED, TRUE);			//Fire User Defined Event 1006
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH, TRUE);			//Fire User Defined Event 1007
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DIALOGUE_END, TRUE);	//Fire User Defined Event 1011
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	ActionPlayAnimation(ANIMATION_LOOPING_MEDITATE, 1.0, (-1.0));
}