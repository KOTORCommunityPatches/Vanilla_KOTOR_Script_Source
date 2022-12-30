// Byte code does not match

void main() {
	
	if (GetIsPC(GetEnteringObject()) == TRUE)
		{
			if (IsAvailableCreature(NPC_BASTILA) == FALSE)
				{
					AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla001");
				}
			
			if (IsNPCPartyMember(NPC_BASTILA) == FALSE)
				{
					SpawnAvailableNPC(NPC_BASTILA, GetLocation(GetObjectByTag("WP01", 0)));
				}
			
			SetPartyLeader(NPC_PLAYER);
			
			AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "end_55a", 0, 0, TRUE));
			
			AssignCommand(GetFirstPC(), ClearAllEffects());
			AssignCommand(GetObjectByTag("Bastila", 0), ClearAllEffects());
			
			SetGlobalBoolean("CREDITPLAY", FALSE);
		}
}
