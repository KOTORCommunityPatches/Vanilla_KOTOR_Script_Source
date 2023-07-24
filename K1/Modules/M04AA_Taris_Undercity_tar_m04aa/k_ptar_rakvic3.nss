#include "k_inc_generic"

void main() {
	
	object oVic1 = GetObjectByTag("rakghoulvic00", 0);
	object oVic2 = GetObjectByTag("rakghoulvic01", 0);
	object oVic3 = GetObjectByTag("rakghoulvic02", 0);
	int nCnt;
	object oRak;
	
	nCnt = 0;
	
	while (nCnt < 3)
		{
			oRak = GetNearestObjectByTag("tar04_rakghoulvic", OBJECT_SELF, nCnt + 1);
			
			ChangeToStandardFaction(oRak, STANDARD_FACTION_HOSTILE_1);
			DelayCommand(1.0, AssignCommand(oRak, GN_DetermineCombatRound()));
			
			nCnt++;
		}
	
	DestroyObject(oVic1, 0.0, TRUE);
	DestroyObject(oVic2, 0.0, TRUE);
	DestroyObject(oVic3, 0.0, TRUE);
}
