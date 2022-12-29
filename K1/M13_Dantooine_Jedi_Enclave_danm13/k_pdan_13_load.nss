void SetPartyMemberState(int nState) {
	int nPartyID = 0;
	
	while (nPartyID <= 8)
		{
			if (GetNPCSelectability(nPartyID) != nState)
				{
					SetNPCSelectability(nPartyID, nState);
				}
			
			nPartyID++;
		}
}

void main() {
	
	if (GetLoadFromSaveGame() == FALSE)
		{
			int nGlobal = GetGlobalNumber("DAN_JEDI_PLOT");
			
			if (nGlobal == 0 && GetGlobalBoolean("DAN_BASTILA_AT_JEDI") == FALSE)
				{
					if (IsNPCPartyMember(NPC_BASTILA))
						{
							RemovePartyMember(NPC_BASTILA);
						}
					
					SpawnAvailableNPC(NPC_BASTILA, GetLocation(GetObjectByTag("dan13_wp_bast_halk", 0)));
					SetGlobalBoolean("DAN_BASTILA_AT_JEDI", TRUE);
				}
			
			if (nGlobal <= 1) && GetGlobalBoolean("DAN_CARTH_AT_JEDI") == FALSE && GetGlobalBoolean("DAN_CARTH_BACKUP") == FALSE)
				{
					if (IsNPCPartyMember(NPC_CARTH))
						{
							RemovePartyMember(NPC_CARTH);
						}
					
					SetPartyMemberState(FALSE);
					SpawnAvailableNPC(NPC_CARTH, GetLocation(GetObjectByTag("dan13_wp_carth_halk", 0)));
					SetGlobalBoolean("DAN_CARTH_AT_JEDI", TRUE);
				}
				else if (nGlobal > 1 && nGlobal < 7)
					{
						AssignCommand(GetObjectByTag("dan13_zhar", 0), JumpToObject(GetObjectByTag("dan13_WP_zhar01", 0)));
						
						if (IsNPCPartyMember(NPC_BASTILA))
							{
								RemovePartyMember(NPC_BASTILA);
							}
						
						SetPartyMemberState(TRUE);
						SetNPCSelectability(NPC_BASTILA, FALSE);
					}
		}
}
