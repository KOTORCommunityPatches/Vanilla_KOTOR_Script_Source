#include "k_inc_dan"

void main() {
	
	int nCnt = 1;
	object oKath = GetNearestObjectByTag("g_kathhoundamb", OBJECT_SELF, nCnt);
	
	while (GetIsObjectValid(oKath))
		{
			ChangeToStandardFaction(oKath, STANDARD_FACTION_HOSTILE_1);
			SetCommandable(TRUE, oKath);
			AssignCommand(oKath, ActionAttack(GetFirstPC(), 0));
			
			nCnt++;
			
			oKath = GetNearestObjectByTag("g_kathhoundamb", OBJECT_SELF, nCnt);
		}
	
	DestroyObject(GetObjectByTag("dan14aa_bay", 0), 0.0, TRUE);
}
