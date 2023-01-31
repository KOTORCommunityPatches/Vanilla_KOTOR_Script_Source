// Byte code does not match

void main() {
	
	if (GetIsPC(GetEnteringObject()) == TRUE)
		{
			if (IsAvailableCreature(NPC_CARTH) == FALSE)
				{
					AddAvailableNPCByTemplate(NPC_CARTH, "p_carth");
				}
			
			if (IsNPCPartyMember(NPC_CARTH) == FALSE)
				{
					SpawnAvailableNPC(NPC_CARTH, GetLocation(GetObjectByTag("WP01", 0)));
				}
			
			SetPartyLeader(NPC_PLAYER);
			
			AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "m12aa_c03_carth", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
			AssignCommand(GetFirstPC(), ClearAllEffects());
			AssignCommand(GetObjectByTag("Carth", 0), ClearAllEffects());
			
			RemoveAvailableNPC(NPC_BASTILA);
		}
}