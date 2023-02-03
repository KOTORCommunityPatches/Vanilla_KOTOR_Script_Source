// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"

void main() {
	
	object oJedi001 = GetObjectByTag("sta_Jedi001", 0);
	object oJedi002 = GetObjectByTag("sta_Jedi002", 0);
	object oJedi003 = GetObjectByTag("sta_Jedi003", 0);
	object oJedi004 = GetObjectByTag("sta_Jedi004", 0);
	object oSith01 = GetObjectByTag("sta45a_Sith01", 0);
	object oSith02 = GetObjectByTag("sta45a_Sith02", 0);
	object oSith03 = GetObjectByTag("sta45a_Sith03", 0);
	object oSith04 = GetObjectByTag("sta45a_Sith04", 0);
	event eUser = EventUserDefined(245);
	
	SignalEvent(oSith01, eUser);
	SignalEvent(oSith02, eUser);
	SignalEvent(oSith03, eUser);
	SignalEvent(oSith04, eUser);
	
	ChangeToStandardFaction(oSith01, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oSith02, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oSith03, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oSith04, STANDARD_FACTION_HOSTILE_1);
	
	event eUser2 = EventUserDefined(145);
	
	AssignCommand(oJedi001, GN_DetermineCombatRound(oSith01));
	AssignCommand(oJedi002, GN_DetermineCombatRound(oSith02));
	AssignCommand(oJedi003, GN_DetermineCombatRound(oSith03));
	AssignCommand(oJedi004, GN_DetermineCombatRound(oSith04));
}
