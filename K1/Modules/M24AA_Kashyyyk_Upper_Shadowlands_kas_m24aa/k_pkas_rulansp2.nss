#include "k_inc_generic"

void main() {
	
	GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_DAMAGED, TRUE);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
	
	if (GetTag(OBJECT_SELF) == "rulan_ter")
		{
			DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(70, DAMAGE_TYPE_UNIVERSAL), OBJECT_SELF));
			PlayAnimation(ANIMATION_LOOPING_SLEEP, 0.5, 1.0);
		}
		else
			{
				DelayCommand(1.0, PlayAnimation(ANIMATION_LOOPING_GET_LOW, 0.6, 2.5));
			}
}