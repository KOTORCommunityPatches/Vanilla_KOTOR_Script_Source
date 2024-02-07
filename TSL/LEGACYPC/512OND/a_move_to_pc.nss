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
		object1 = GetObjectByTag(sParam, 0);
	}
	if ((nParam3 == 0)) {
		nParam3 = 1;
	}
	DelayCommand(IntToFloat(nParam2), AssignCommand(object1, ActionForceMoveToObject(GetFirstPC(), nParam1, IntToFloat(nParam3), 30.0)));
}

