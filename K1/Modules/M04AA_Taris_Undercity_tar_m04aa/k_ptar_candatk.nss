// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_utility"
#include "k_inc_generic"

void main() {
	
	object oDavTrp1 = GetObjectByTag("Daviktroop041", 0);
	object oDavTrp2 = GetObjectByTag("Daviktroop042", 0);
	object oDavTrp3 = GetObjectByTag("Daviktroop043", 0);
	object oCand = OBJECT_SELF;
	object oRak;
	int nCnt;
	
	ChangeToStandardFaction(oCand, STANDARD_FACTION_FRIENDLY_1);
	ChangeToStandardFaction(oDavTrp1, STANDARD_FACTION_FRIENDLY_1);
	ChangeToStandardFaction(oDavTrp2, STANDARD_FACTION_FRIENDLY_1);
	ChangeToStandardFaction(oDavTrp3, STANDARD_FACTION_FRIENDLY_1);
	
	DelayCommand(0.5, AssignCommand(oCand, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oDavTrp1, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oDavTrp2, GN_DetermineCombatRound()));
	DelayCommand(0.5, AssignCommand(oDavTrp3, GN_DetermineCombatRound()));
	
	nCnt = 0;
	
	while (GetIsObjectValid(oRak = GetObjectByTag("tar04_rakghoulco", nCnt)))
		{
			ChangeToStandardFaction(oRak, STANDARD_FACTION_HOSTILE_1);
			DelayCommand(0.5, AssignCommand(oRak, GN_DetermineCombatRound()));
			
			nCnt++;
		}
}
