// Byte code does not match
void main() {
	if (GetIsPC(GetEnteringObject()) == TRUE)
		{
			if (IsAvailableCreature(NPC_BASTILA) == FALSE)
				{
					AddAvailableNPCByTemplate(NPC_BASTILA, "p_bastilla");
				}
			if (IsNPCPartyMember(NPC_BASTILA) == FALSE)
				{
					SpawnAvailableNPC(0, GetLocation(GetObjectByTag("WP01", 0)));
				}
			SetPartyLeader(NPC_PLAYER);
			AssignCommand(GetObjectByTag("Bastila", 0), ClearAllEffects());
			AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "m44aa_c02", 0, CONVERSATION_TYPE_CINEMATIC, TRUE));
			DelayCommand(0.3, PlayRoomAnimation("StuntRoom44aa", ANIMATION_ROOM_SCRIPTLOOP02));
			DelayCommand(2.6, PlayRoomAnimation("StuntRoom44aa", ANIMATION_ROOM_SCRIPTLOOP01));
		}
}
