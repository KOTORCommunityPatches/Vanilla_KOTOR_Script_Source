#include "k_inc_generic"

void main() {
	
	object oTechA = GetObjectByTag("lev40_hktech0", 0);
	object oTechB = GetObjectByTag("lev40_hktech1", 0);
	
	ChangeToStandardFaction(oTechA, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oTechB, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(0.5, AssignCommand(oTechA, GN_DetermineCombatRound(OBJECT_INVALID)));
	DelayCommand(0.5, AssignCommand(oTechB, GN_DetermineCombatRound(OBJECT_INVALID)));
}