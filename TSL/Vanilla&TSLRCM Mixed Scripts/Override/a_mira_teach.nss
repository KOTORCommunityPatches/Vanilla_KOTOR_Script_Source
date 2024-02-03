void main() {
	object oMira = GetObjectByTag("Mira", 0);
	int nParam1 = GetScriptParameter(1);
	GrantSpell(nParam1, oMira);
}

