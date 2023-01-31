#include "k_inc_generic"

void main() {
	
	object oPC = GetFirstPC();
	object oZuulan = GetObjectByTag("dan_cut_zuulan", 0);
	object oDroid1 = GetObjectByTag("dan_cut_droid1", 0);
	object oDroid2 = GetObjectByTag("dan_cut_droid2", 0);
	
	ChangeToStandardFaction(oZuulan, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oDroid1, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oDroid2, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(0.4, SetMinOneHP(OBJECT_SELF, FALSE));
	
	DelayCommand(0.5, AssignCommand(oZuulan, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oDroid1, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oDroid2, GN_DetermineCombatRound()));
}