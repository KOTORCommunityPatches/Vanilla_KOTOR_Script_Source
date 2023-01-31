#include "k_inc_generic"

void main() {
	
	ChangeToStandardFaction(GetObjectByTag("tar04_sithtrooper0", 0), STANDARD_FACTION_HOSTILE_1);
	AssignCommand(GetObjectByTag("tar04_sithtrooper0", 0), GN_DetermineCombatRound());
	
	ChangeToStandardFaction(GetObjectByTag("tar04_sithtrooper0", 1), STANDARD_FACTION_HOSTILE_1);
	AssignCommand(GetObjectByTag("tar04_sithtrooper0", 1), GN_DetermineCombatRound());
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	GN_DetermineCombatRound();
}