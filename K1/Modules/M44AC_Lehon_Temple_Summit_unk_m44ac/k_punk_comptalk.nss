void main() {
	
	int nTalk = 0;
	
	if (GetGlobalNumber("G_FinalChoice") == 1)
		{
			object oJolee = GetObjectByTag("Jolee", 0);
			object oJuhani = GetObjectByTag("Juhani", 0);
			
			if (!GetIsObjectValid(oJolee) && !GetIsObjectValid(oJuhani))
				{
					nTalk = 1;
				}
		}
		else if (GetGlobalNumber("G_FinalChoice") == 2)
			{
				nTalk = 1;
			}
	
	if (nTalk == 1)
		{
			ActionStartConversation(GetPartyMemberByIndex(0), "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE);
		}
}