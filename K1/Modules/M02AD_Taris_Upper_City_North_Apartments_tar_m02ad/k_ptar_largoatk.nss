// Bytecode does not match. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_generic"

void main() {
	
	object oSelf = OBJECT_SELF;
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(0.5, AssignCommand(oSelf, GN_DetermineCombatRound(OBJECT_INVALID)));
}
