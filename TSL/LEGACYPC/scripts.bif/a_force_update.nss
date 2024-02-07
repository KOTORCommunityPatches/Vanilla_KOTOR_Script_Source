void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	object object1;
	if ((sParam == "")) {
		object1 = OBJECT_SELF;
	}
	else {
		object1 = GetObjectByTag(sParam, 0);
	}
	SetForceAlwaysUpdate(object1, nParam1);
	if (((nParam1 == 0) && (nParam2 == 1))) {
		DelayCommand(0.5, DestroyObject(object1, 0.0, 0, 0.0, 0));
	}
}

