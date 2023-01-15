void main() {
	int nParam1 = GetScriptParameter(1);
	string sParam = GetScriptStringParameter();
	object oPC = GetObjectByTag(sParam, 0);
	if ((sParam == "pc")) {
		oPC = GetFirstPC();
	}
	SetLockOrientationInDialog(oPC, nParam1);
}

