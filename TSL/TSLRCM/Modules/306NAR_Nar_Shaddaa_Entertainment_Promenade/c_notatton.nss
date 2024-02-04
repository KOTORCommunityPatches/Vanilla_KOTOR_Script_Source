int StartingConditional() {
	return ((GetPartyLeader() != GetObjectByTag("Atton", 0)) && (GetGlobalNumber("301NAR_Domo") == 2));
}