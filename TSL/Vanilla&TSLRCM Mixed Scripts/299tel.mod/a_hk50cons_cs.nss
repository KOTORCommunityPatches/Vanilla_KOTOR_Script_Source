void main() {
	int nParam1 = GetScriptParameter(1);
	object oHK50cons = GetObjectByTag("HK50cons", nParam1);
	ChangeToStandardFaction(oHK50cons, 1);
}

