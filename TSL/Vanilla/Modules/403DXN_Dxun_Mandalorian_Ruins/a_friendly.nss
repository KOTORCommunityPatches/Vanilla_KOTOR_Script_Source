void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	object object1;
	if ((sParam == "")) {
		object1 = OBJECT_SELF;
	}
	else {
		object1 = GetObjectByTag(sParam, nParam1);
	}
	if ((!nParam3)) {
		DelayCommand(IntToFloat(nParam2), ChangeToStandardFaction(object1, 2));
	}
	else {
		DelayCommand(IntToFloat(nParam2), ChangeToStandardFaction(object1, 4));
	}
}
