#include "k_inc_generic"

void main() {
	
	object oGuard1 = GetObjectByTag("kas22_czguard_01", 0);
	object oGuard2 = GetObjectByTag("kas22_czguard_02", 0);
	
	// Undocumented STANDARD_FACTION_CZERKA.
	ChangeToStandardFaction(oGuard1, 18);
	ChangeToStandardFaction(oGuard2, 18);
	ChangeToStandardFaction(OBJECT_SELF, 18);
	
	AssignCommand(oGuard1, GN_DetermineCombatRound(OBJECT_INVALID));
	AssignCommand(oGuard2, GN_DetermineCombatRound(OBJECT_INVALID));
	GN_DetermineCombatRound(OBJECT_INVALID);
}
