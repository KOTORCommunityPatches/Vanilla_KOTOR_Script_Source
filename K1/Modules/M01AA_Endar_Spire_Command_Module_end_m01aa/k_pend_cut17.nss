// Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_end"

void main() {
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	ClearAllEffects();
	SetMinOneHP(OBJECT_SELF, FALSE);
	GN_DetermineCombatRound();
}
