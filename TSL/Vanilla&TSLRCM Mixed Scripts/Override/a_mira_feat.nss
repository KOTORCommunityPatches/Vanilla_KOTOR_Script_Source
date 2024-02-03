void main() {
	object oMira = GetObjectByTag("Mira", 0);
	int nParam1 = GetScriptParameter(1);
	GrantFeat(nParam1, oMira);
	IncrementGlobalNumber("000_Mira_Learn", 1);
}

