#include "k_inc_generic"

void main() {
	
	object oHulas = GetObjectByTag("Hulas", 0);
	object oSenni = GetObjectByTag("tat_senni", 0);
	object oBH = GetObjectByTag("tat_bounty", 0);
	object oThug1 = GetObjectByTag("tat_thug1", 0);
	object oThug2 = GetObjectByTag("tat_thug2", 0);
	object oThug3 = GetObjectByTag("tat_thug3", 0);
	object oThug4 = GetObjectByTag("tat_thug4", 0);
	object oTurret1 = GetObjectByTag("tat18_aturret_01", 0);
	object oTurret2 = GetObjectByTag("tat18_aturret_02", 0);
	object oTurret3 = GetObjectByTag("tat18_aturret_02", 1);
	
	ChangeToStandardFaction(oTurret1, STANDARD_FACTION_NEUTRAL);
	ChangeToStandardFaction(oTurret2, STANDARD_FACTION_NEUTRAL);
	ChangeToStandardFaction(oTurret3, STANDARD_FACTION_NEUTRAL);
	ChangeToStandardFaction(oHulas, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oSenni, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oBH, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oThug1, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oThug2, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oThug3, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oThug4, STANDARD_FACTION_HOSTILE_1);
	DelayCommand(0.5, AssignCommand(oSenni, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oBH, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oThug1, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oThug2, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oThug3, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oThug4, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oHulas, GN_DetermineCombatRound()));
}