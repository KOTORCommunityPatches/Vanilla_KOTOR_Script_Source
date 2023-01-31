#include "k_inc_generic"

void main() {
	
	object oThug01 = GetObjectByTag("tat18_jagithug01", 0);
	object oThug02 = GetObjectByTag("tat18_jagithug02", 0);
	
	ChangeToStandardFaction(oThug01, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oThug02, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	AssignCommand(oThug01, GN_DetermineCombatRound());
	AssignCommand(oThug02, GN_DetermineCombatRound());
	GN_DetermineCombatRound();
}