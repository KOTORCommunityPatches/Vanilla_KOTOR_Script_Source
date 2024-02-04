int StartingConditional() {
	return ((GetClassByPosition(2, GetObjectByTag("Mira", 0)) == 5) && (GetGlobalNumber("000_Mira_Learn") == 0));
}