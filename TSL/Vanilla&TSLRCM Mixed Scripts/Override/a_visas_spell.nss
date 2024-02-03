void main() {
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	int nParam1 = GetScriptParameter(1);
	GrantSpell(nParam1, oVisasMarr);
	IncrementGlobalNumber("000_Visas_Learn", 1);
}

