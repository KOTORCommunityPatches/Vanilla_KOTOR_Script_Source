#include "k_inc_lev"

void StripAndJump(object oWP) {
	
	object oLocker = GetObjectByTag("lev40_ptylocker", 0);
	
	ClearAllActions();
	ActionJumpToObject(oWP, FALSE);
	
	LEV_StripCharacter(OBJECT_SELF, oLocker);
}

void main() {
	
	object oLocker = GetObjectByTag("lev40_ptylocker", 0);
	object oNPC;
	int nCnt;
	
	DestroyObject(GetObjectByTag("bastila", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("carth", 0), 0.0, TRUE);
	
	nCnt = 0;
	
	while (nCnt < GetPartyMemberCount())
		{
			oNPC = GetPartyMemberByIndex(nCnt);
			
			SetCommandable(TRUE, oNPC);
			
			if (nCnt == 1)
				{
					AssignCommand(oNPC, StripAndJump(GetObjectByTag("lev40_wpequiproom", 0)));
				}
				else if (nCnt == 2)
					{
						AssignCommand(oNPC, StripAndJump(GetObjectByTag("lev40_wpequiprooma", 0)));
					}
			
			nCnt++;
		}
	
	SetGlobalFadeIn(1.0, 1.0);
}