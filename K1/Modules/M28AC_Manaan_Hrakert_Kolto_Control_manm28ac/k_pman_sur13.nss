// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	object oSurvivor = GetObjectByTag("man28_sur4", 0);
 	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_2);
 	ChangeToStandardFaction(oSurvivor, STANDARD_FACTION_HOSTILE_2);
 	
	GN_DetermineCombatRound();
	AssignCommand(oSurvivor, GN_DetermineCombatRound());
 }
