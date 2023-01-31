// Byte code does not match
void main() {
	
	if (GetIsPC(GetEnteringObject()) == TRUE && GetIsInCombat(GetEnteringObject()) == FALSE && !GetIsObjectValid(GetObjectByTag("unk41_rakguide", 0)))
		{
			SetGlobalFadeOut();
			
			SetPartyLeader(NPC_PLAYER);
			NoClicksFor(0.7);
			
			DelayCommand(0.5, AssignCommand(GetObjectByTag("invis3", 0), ActionStartConversation(GetFirstPC(), "unk41_ambush", FALSE, 0, TRUE)));
			
			DelayCommand(1.0, DestroyObject(OBJECT_SELF));
		}
}