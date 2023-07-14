#include "k_inc_generic"

void main() {
	
	int nCnt = 0;
	object oMook = GetObjectByTag("CaloThug", nCnt);
	
	while (GetIsObjectValid(oMook) || nCnt < 5)
		{
			if (GetIsObjectValid(oMook))
				{
					ChangeToStandardFaction(oMook, STANDARD_FACTION_HOSTILE_1);
					DelayCommand(0.5, AssignCommand(oMook, ClearAllActions()));
					DelayCommand(0.5, AssignCommand(oMook, GN_DetermineCombatRound()));
				}
			
			nCnt++;
			
			oMook = GetObjectByTag("CaloThug", nCnt);
		}
	
	ChangeToStandardFaction(GetObjectByTag("CaloNord", 0), STANDARD_FACTION_HOSTILE_1);
	DelayCommand(0.5, ClearAllActions());
	DelayCommand(0.5, GN_DetermineCombatRound());
}
