#include "k_inc_generic"

void main() {
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	GN_DetermineCombatRound(OBJECT_INVALID);
	
	AssignCommand(GetPartyMemberByIndex(1), GN_DetermineCombatRound(OBJECT_INVALID));
	AssignCommand(GetPartyMemberByIndex(2), GN_DetermineCombatRound(OBJECT_INVALID));
	
	SetPlotFlag(GetObjectByTag("bastilae", 0), FALSE);
	SetPlotFlag(GetPartyMemberByIndex(0), FALSE);
	SetPlotFlag(GetPartyMemberByIndex(1), FALSE);
	SetPlotFlag(GetPartyMemberByIndex(2), FALSE);
}