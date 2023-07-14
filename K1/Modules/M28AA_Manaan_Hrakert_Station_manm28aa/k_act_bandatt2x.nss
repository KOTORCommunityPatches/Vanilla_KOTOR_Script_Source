#include "k_inc_generic"

void main() {
	
	int nCnt = 0;
	object oMookA = GetObjectByTag("g_darkjedi02", nCnt);
	object oMookB = GetObjectByTag("g_darkjedi02", nCnt);
	
	while (GetIsObjectValid(oMookA) || GetIsObjectValid(oMookB))
		{
			if (GetIsObjectValid(oMookA))
				{
					ChangeToStandardFaction(oMookA, STANDARD_FACTION_HOSTILE_1);
					DelayCommand(0.5, AssignCommand(oMookA, ClearAllActions()));
					DelayCommand(0.5, AssignCommand(oMookA, GN_DetermineCombatRound()));
				}
			
			if (GetIsObjectValid(oMookB))
				{
					ChangeToStandardFaction(oMookB, STANDARD_FACTION_HOSTILE_1);
					DelayCommand(0.5, AssignCommand(oMookB, ClearAllActions()));
					DelayCommand(0.5, AssignCommand(oMookB, GN_DetermineCombatRound()));
				}
			
			nCnt++;
			
			oMookA = GetObjectByTag("g_bandonlacky", nCnt);
			oMookB = GetObjectByTag("g_bandonlacky", nCnt);
		}
	
	ChangeToStandardFaction(GetObjectByTag("g_bandon", 0), STANDARD_FACTION_HOSTILE_1);
	DelayCommand(0.5, ClearAllActions());
	DelayCommand(0.5, GN_DetermineCombatRound());
}
