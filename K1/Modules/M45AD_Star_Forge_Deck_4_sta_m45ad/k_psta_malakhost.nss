#include "k_inc_generic"

void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oPC = GetFirstPC();
	
	ChangeToStandardFaction(oMalak, STANDARD_FACTION_HOSTILE_1);
	DelayCommand(0.5, GN_DetermineCombatRound(oPC));
}
