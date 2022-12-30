#include "k_inc_generic"

void main() {
	
	ChangeToStandardFaction(GetObjectByTag("darkjedi441", 0), STANDARD_FACTION_HOSTILE_1);
	AssignCommand(GetObjectByTag("darkjedi441", 0), GN_DetermineCombatRound());
	ChangeToStandardFaction(GetObjectByTag("darkjedi442", 0), STANDARD_FACTION_HOSTILE_1);
	AssignCommand(GetObjectByTag("darkjedi442", 0), GN_DetermineCombatRound());
}
