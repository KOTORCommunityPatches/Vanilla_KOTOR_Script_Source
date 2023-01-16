void NPC_Jump(object oWP) {
	ClearAllEffects();
	ClearAllActions();
	ActionJumpToObject(oWP, FALSE);
}

void Party_Jump() {
	int nCount;
	object oNPC;
	effect effect1;
	object oWP_PM0 = GetNearestObjectByTag("lev40_wpairlocka", OBJECT_SELF, 1);
	object oWP_PM1 = GetNearestObjectByTag("lev40_wpairlockb", OBJECT_SELF, 1);
	object oWP_PM2 = GetNearestObjectByTag("lev40_wpairlockc", OBJECT_SELF, 1);
	
	nCount = 0;
	
	while (nCount < GetPartyMemberCount())
		{
			oNPC = GetPartyMemberByIndex(nCount);
			
			if (nCount == 0)
				{
					AssignCommand(oNPC, NPC_Jump(oWP_PM0));
				}
				else if (nCount == 1)
					{
						AssignCommand(oNPC, NPC_Jump(oWP_PM1));
					}
					else
						{
							AssignCommand(oNPC, NPC_Jump(oWP_PM2));
						}
			
			nCount++;
		}
	
	SetGlobalBoolean("LEV_SPACESUIT", FALSE);
	SetGlobalNumber("LEV_SPACEWALK", 0);
}

void main() {
	
	object oDoor = GetNearestObjectByTag("lev40_airlockout", OBJECT_SELF, 1);
	
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	
	if (!GetGlobalBoolean("LEV_SPACESUIT"))
		{
			return;
		}
	
	SetPlayerRestrictMode(FALSE);
	
	NoClicksFor(1.5);
	
	SetGlobalFadeOut(0.0, 1.0);
	
	DelayCommand(1.0, Party_Jump());
	
	DelayCommand(1.5, SetGlobalFadeIn(0.0, 1.0));
}
