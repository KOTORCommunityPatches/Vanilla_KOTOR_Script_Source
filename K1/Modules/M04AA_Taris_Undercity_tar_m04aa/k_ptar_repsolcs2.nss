#include "k_inc_generic"

void main() {
	
	object oRepSol = GetObjectByTag("republicso", 0);
	int nCnt;
	object oRak;
	
	nCnt = 0;
	
	while (nCnt < 1)
		{
			oRak = GetNearestObjectByTag("tar04_rakghoulvic", OBJECT_SELF, nCnt + 1);
			
			ChangeToStandardFaction(oRak, STANDARD_FACTION_HOSTILE_1);
			DelayCommand(0.5, AssignCommand(oRak, GN_DetermineCombatRound()));
			
			nCnt++;
		}
	
	DestroyObject(oRepSol, 0.0, TRUE);
}
