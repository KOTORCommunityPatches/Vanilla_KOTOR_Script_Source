void main() {
	
	if (GetPartyMemberByIndex(0) == GetFirstPC())
		{
			ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
		}
		else
			{
				SetPartyLeader(NPC_PLAYER);
				SetGlobalFadeOut(0.0, 0.5);
				DelayCommand(0.6, SetGlobalFadeIn(0.0, 0.0));
				NoClicksFor(0.8);
				DelayCommand(0.6, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
			}
}
