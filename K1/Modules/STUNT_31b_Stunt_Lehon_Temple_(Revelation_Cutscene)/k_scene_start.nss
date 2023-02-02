// Byte code does not match

void main() {
	
	if (GetIsPC(GetEnteringObject()) == TRUE)
		{
			SetPartyLeader(NPC_PLAYER);
			
			if (GetGender(GetFirstPC()) == GENDER_MALE)
				{
					CreateObject(OBJECT_TYPE_CREATURE, "n_darthrevan001", GetLocation(GetObjectByTag("WP01", 0)), 0);
				}
			
			if (GetGender(GetFirstPC()) == GENDER_FEMALE)
				{
					CreateObject(OBJECT_TYPE_CREATURE, "n_darthrevan003", GetLocation(GetObjectByTag("WP01", 0)), 0);
				}
			
			DuplicateHeadAppearance(GetObjectByTag("DarthRevan", 0), GetFirstPC());
			
			AssignCommand(GetObjectByTag("Light01", 0), ActionPlayAnimation(ANIMATION_PLACEABLE_ANIMLOOP04));
			
			AssignCommand(GetObjectByTag("CutStart", 0), ActionStartConversation(GetFirstPC(), "31b_convers", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}
