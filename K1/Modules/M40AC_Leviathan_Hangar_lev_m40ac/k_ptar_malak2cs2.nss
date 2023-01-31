#include "k_inc_generic"

void main() {
	
	object oMalak = GetObjectByTag("darthmalak400", 0);
	
	ChangeToStandardFaction(oMalak, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(1.0, AssignCommand(oMalak, GN_DetermineCombatRound(OBJECT_INVALID)));
}