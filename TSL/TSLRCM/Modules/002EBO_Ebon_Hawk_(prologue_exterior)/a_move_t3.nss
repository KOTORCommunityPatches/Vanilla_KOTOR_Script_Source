void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	DelayCommand(IntToFloat(nParam1), AssignCommand(GetObjectByTag("t3m4", 0), ActionForceMoveToObject(GetObjectByTag(sParam, 0), 0, 1.0, 30.0)));
}