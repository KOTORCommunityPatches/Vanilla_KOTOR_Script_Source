#include "k_inc_generic"

void main() {
	
	object oSelf = OBJECT_SELF;
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(0.5, AssignCommand(oSelf, GN_DetermineCombatRound(OBJECT_INVALID)));
}
