#include "k_inc_generic"

void main() {
	
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectVisualEffect(8001, 0), OBJECT_SELF, 5.0));
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectDamageResistance(DAMAGE_TYPE_UNIVERSAL, 50), OBJECT_SELF);
	
	DelayCommand(0.6, ActionPlayAnimation(ANIMATION_FIREFORGET_ACTIVATE));
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_HEARTBEAT, TRUE);
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH, TRUE);
	
	DelayCommand(0.5, ExecuteScript("k_def_buff", OBJECT_SELF, -1));
	
	if (GetTag(OBJECT_SELF) == "kas25_mandcomm")
		{
			GN_SetSpawnInCondition(SW_FLAG_BOSS_AI, TRUE);
		}
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
