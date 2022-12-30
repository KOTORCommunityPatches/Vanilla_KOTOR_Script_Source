void main() {
	
	if (IsNPCPartyMember(NPC_JUHANI) == TRUE)
		{
			AddJournalQuestEntry("k_swg_juhani", 120);
		}
	
	SetGlobalNumber("G_FinalChoice", 2);
	
	PlayMovie("05_8E");
	
	ActionJumpToLocation(GetLocation(GetObjectByTag("playerend", 0)));
	
	DestroyObject(GetObjectByTag("GWing", 0), 0.0, TRUE);
	
	SetGlobalFadeIn(0.0, 2.0);
	
	DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, TRUE));
}
