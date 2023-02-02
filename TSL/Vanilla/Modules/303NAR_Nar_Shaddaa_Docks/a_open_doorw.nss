void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	object object1 = GetObjectByTag(sParam, 0);
	DelayCommand(IntToFloat(nParam1), AssignCommand(object1, ActionUnlockObject(object1)));
	DelayCommand(IntToFloat(nParam1), AssignCommand(object1, ActionOpenDoor(object1)));
}
