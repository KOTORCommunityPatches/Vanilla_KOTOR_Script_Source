#include "k_inc_generic"

void main() {
	
	GN_SetDayNightPresence(AMBIENT_PRESENCE_ALWAYS_PRESENT);
	GN_WalkWayPoints();
	DelayCommand(4.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(GetCurrentHitPoints(OBJECT_SELF)), OBJECT_SELF));
	DelayCommand(1.0, GN_DetermineCombatRound (GetObjectByTag("kas22_kinrath_05", 0)));
}
