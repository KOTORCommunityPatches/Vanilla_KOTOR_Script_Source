void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	int nParam4 = GetScriptParameter(4);
	int nParam5 = GetScriptParameter(5);
	object oPC;
	if ((sParam == "")) {
		oPC = GetFirstPC();
	}
	else {
		if ((sParam == "OBJECT_SELF")) {
			oPC = OBJECT_SELF;
		}
		else {
			oPC = GetObjectByTag(sParam, 0);
		}
	}
	if ((nParam2 == 0)) {
		nParam2 = 1;
	}
	DelayCommand(IntToFloat(nParam4), AssignCommand(oPC, PlayAnimation((10000 + nParam1), IntToFloat(nParam2), IntToFloat(nParam3))));
}
