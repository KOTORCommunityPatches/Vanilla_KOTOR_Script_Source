#include "k_inc_generic"

void main() {
	
	object oMission = GetObjectByTag("mission", 0);
	object oZaalbar = GetObjectByTag("zaalbar", 0);
	object oCand = GetObjectByTag("cand", 0);
	
	ChangeToStandardFaction(oMission, STANDARD_FACTION_HOSTILE_1);
	AssignCommand(oMission, GN_DetermineCombatRound(OBJECT_INVALID));
	
	ChangeToStandardFaction(oZaalbar, STANDARD_FACTION_HOSTILE_1);
	AssignCommand(oZaalbar, GN_DetermineCombatRound(OBJECT_INVALID));
	
	ChangeToStandardFaction(oCand, STANDARD_FACTION_FRIENDLY_1);
	AssignCommand(oCand, GN_DetermineCombatRound(OBJECT_INVALID));
	
	SetGlobalNumber("UNK_PARTYSHOWDOWN", 2);
}