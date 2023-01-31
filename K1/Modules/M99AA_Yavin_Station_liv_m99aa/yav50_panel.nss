void main() {
	
	if (GetGlobalNumber("YAV_SUVAM") == 0)
		{
			SetGlobalBoolean("YAV_SUVAMH", TRUE);
			
			AssignCommand(GetObjectByTag("yav47_suvam", 0), ClearAllActions());
			
			SetGlobalFadeOut();
			
			SetPartyLeader(NPC_PLAYER);
			
			DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(0), ActionJumpToLocation(GetLocation(GetObjectByTag("start01", 0)))));
			DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(1), ActionJumpToLocation(GetLocation(GetObjectByTag("start02", 0)))));
			DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(2), ActionJumpToLocation(GetLocation(GetObjectByTag("start03", 0)))));
			
			SetGlobalBoolean("YAV_SUVAMH", TRUE);
			
			DelayCommand(0.2, AssignCommand(GetObjectByTag("yav47_suvam", 0), ActionStartConversation(GetFirstPC(), "yav47_suvam", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
		}
		else if (GetGlobalNumber("YAV_SUVAM") == 2 && GetGlobalNumber("K_STAR_MAP") >= 30 && GetGlobalBoolean("YAV_SUVAMA") == TRUE)
			{
				SetGlobalBoolean("YAV_SUVAMH", TRUE);
				
				AssignCommand(GetObjectByTag("yav47_suvam", 0), ClearAllActions());
				
				SetGlobalFadeOut();
				
				SetPartyLeader(NPC_PLAYER);
				
				DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(0), ActionJumpToLocation(GetLocation(GetObjectByTag("start01", 0)))));
				DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(1), ActionJumpToLocation(GetLocation(GetObjectByTag("start02", 0)))));
				DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(2), ActionJumpToLocation(GetLocation(GetObjectByTag("start03", 0)))));
				
				AssignCommand(GetObjectByTag("yav50_airlock", 0), ActionOpenDoor(GetObjectByTag("yav50_airlock", 0)));
				
				DelayCommand(0.2, AssignCommand(GetObjectByTag("yav47_suvam", 0), ActionStartConversation(GetFirstPC(), "yav47_suvam", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
			}
			else if (GetGlobalNumber("YAV_SUVAM") == 3 && GetGlobalNumber("K_STAR_MAP") >= 50 && GetGlobalBoolean("YAV_SUVAMA") == TRUE)
				{
					SetGlobalBoolean("YAV_SUVAMH", TRUE);
					
					AssignCommand(GetObjectByTag("yav47_suvam", 0), ClearAllActions());
					
					SetGlobalFadeOut();
					
					SetPartyLeader(NPC_PLAYER);
					
					DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(0), ActionJumpToLocation(GetLocation(GetObjectByTag("start01", 0)))));
					DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(1), ActionJumpToLocation(GetLocation(GetObjectByTag("start02", 0)))));
					DelayCommand(0.1, AssignCommand(GetPartyMemberByIndex(2), ActionJumpToLocation(GetLocation(GetObjectByTag("start03", 0)))));
					
					AssignCommand(GetObjectByTag("yav50_airlock", 0), ActionOpenDoor(GetObjectByTag("yav50_airlock", 0)));
					
					DelayCommand(0.2, AssignCommand(GetObjectByTag("yav47_suvam", 0), ActionStartConversation(GetFirstPC(), "yav47_suvam", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
				}
				else
					{
						AssignCommand(GetObjectByTag("yav50_airlock", 0), ActionOpenDoor(GetObjectByTag("yav50_airlock", 0)));
					}
}