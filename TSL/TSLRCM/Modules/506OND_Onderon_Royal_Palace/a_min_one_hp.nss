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
	DelayCommand(IntToFloat(nParam2), SetMinOneHP(object1, nParam1));
}