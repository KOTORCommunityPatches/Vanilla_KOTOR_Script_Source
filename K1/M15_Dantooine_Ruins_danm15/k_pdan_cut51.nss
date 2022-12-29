void main() {
	
	object oInvis = GetObjectByTag("dan15_cutobj01", 0);
	object oPC = GetFirstPC();
	
	if ((GetIsObjectValid(oInvis) == TRUE))
		{
			if ((oPC == GetPartyMemberByIndex(0)))
				{
					AssignCommand(oInvis, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
				}
			
			else
				{
					SetGlobalFadeOut();
					SetGlobalFadeIn(2.0, 2.0);
					
					SetPartyLeader(NPC_PLAYER);
					
					object oPM1 = GetPartyMemberByIndex(1);
					object oPM2 = GetPartyMemberByIndex(2);
					
					AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oInvis, 1)));
					AssignCommand(oPM1, DelayCommand(1.5, JumpToObject(oPC, 1)));
					AssignCommand(oPM2, DelayCommand(1.5, JumpToObject(oPC, 1)));
					
					NoClicksFor(1.4);
					
					AssignCommand(oInvis, DelayCommand(1.2, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
				}
		}
}
