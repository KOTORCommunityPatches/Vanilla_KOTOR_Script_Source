#include "k_inc_generic"

void main() {
	
	object oWook = GetObjectByTag("kas25_hurt_01", 0);
	object oMando02 = GetObjectByTag("kas25_mandalor06", 0);
	object oMando03 = GetObjectByTag("kas25_mandalor07", 0);
	int nHP = GetMaxHitPoints(oWook) - 1;
	
	SetPlotFlag(oMando02, FALSE);
	SetPlotFlag(oMando03, FALSE);
	SetPlotFlag(oWook, FALSE);
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(nHP), oWook);
	
	ChangeToStandardFaction(oMando02, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oMando03, STANDARD_FACTION_HOSTILE_1);
	
	AssignCommand(oWook, GN_DetermineCombatRound());
	AssignCommand(oMando02, GN_DetermineCombatRound());
	AssignCommand(oMando03, GN_DetermineCombatRound());
}
