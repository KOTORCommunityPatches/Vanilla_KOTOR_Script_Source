void main() {
	int nParam1 = GetScriptParameter(1);
	string sParam = GetScriptStringParameter();
	AssignCommand(GetObjectByTag(sParam, 0), SetIsDestroyable(1, 1, 1));
	DelayCommand(IntToFloat(nParam1), DestroyObject(GetObjectByTag(sParam, 0), 0.0, 0, 0.0, 0));
}

