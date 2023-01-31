void main() {
	
	int nLevel;
	
	ActionPauseConversation();
	
	SetGlobalNumber("G_FinalChoice", 1);
	
	SetGlobalFadeOut();
	
	RemovePartyMember(NPC_JOLEE);
	RemoveAvailableNPC(NPC_JOLEE);
	RemovePartyMember(NPC_JUHANI);
	RemoveAvailableNPC(NPC_JUHANI);
	
	nLevel = (GetLevelByPosition(1, OBJECT_SELF) + GetLevelByPosition(2, OBJECT_SELF) + GetLevelByPosition(3, OBJECT_SELF));
	
	if (nLevel <= 15)
		{
			AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla001");
		}
		else if (nLevel == 16)
			{
				AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla002");
			}
			else if (nLevel == 17)
				{
					AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla003");
				}
				else if (nLevel == 18)
					{
						AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla004");
					}
					else if (nLevel == 19)
						{
							AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla005");
						}
						else if (nLevel == 20)
							{
								AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla006");
							}
	
	SpawnAvailableNPC(NPC_BASTILA, GetLocation(GetObjectByTag("bastend", 0)));
	ActionJumpToLocation(GetLocation(GetObjectByTag("main", 0)));
	
	ActionWait(1.0);
	SetGlobalFadeIn(1.0, 1.0);
	ActionResumeConversation();
}