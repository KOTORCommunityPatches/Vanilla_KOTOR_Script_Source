#include "k_inc_kas"

void main() {
	
	object oMatton = GetObjectByTag("kas22_dasol_01", 0);
	object oEli = OBJECT_SELF;
	
	SetEliDeadLocal(TRUE, oMatton);
	ChangeToStandardFaction(oEli, STANDARD_FACTION_FRIENDLY_2);
	AssignCommand(oMatton, ActionAttack(oEli));
	DelayCommand(1.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oEli));
}
