#include "k_inc_debug"
#include "k_inc_generic"

void main() {
	
	GN_SetSpawnInCondition(SW_FLAG_EVENT_ON_DEATH, TRUE);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectLinkEffects(EffectForceShield(SHIELD_PLOT_TAR_M09AA), EffectSkillIncrease(SKILL_PERSUADE, 1)), OBJECT_SELF, 0.0);
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_SetListeningPatterns();
	GN_WalkWayPoints();
}
