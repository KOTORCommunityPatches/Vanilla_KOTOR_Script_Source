#include "k_inc_utility"

void main() {
	
	int nCount;
	object oFan;
	
	UT_ActionPauseConversation(1.0);
	
	AssignCommand(GetFirstPC(), JumpToLocation(GetLocation(GetObjectByTag("tar_pc_cutjump", 0))));
	
	nCount = 2;
	
	while (nCount >= 0)
		{
			oFan = GetObjectByTag("tar03_swoopie", nCount);
			DestroyObject(oFan, 0.0, TRUE);
			(nCount--);
		}
}