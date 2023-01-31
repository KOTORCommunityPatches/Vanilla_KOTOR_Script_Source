#include "k_inc_generic"

void main() {
	
	object oDarkJedi02 = GetObjectByTag("tat17_darkjedi02", 0);
	object oDarkJedi03 = GetObjectByTag("tat17_darkjedi03", 0);
	
	ChangeToStandardFaction(oDarkJedi02, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oDarkJedi03, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	AssignCommand(oDarkJedi02, DelayCommand(1.0, GN_DetermineCombatRound()));
	AssignCommand(oDarkJedi03, DelayCommand(1.0, GN_DetermineCombatRound()));
	DelayCommand(1.0, GN_DetermineCombatRound());
}