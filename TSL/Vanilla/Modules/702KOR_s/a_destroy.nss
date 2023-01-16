void main() {
	int nParam1 = GetScriptParameter(1);
	string sParam = GetScriptStringParameter();
	DelayCommand(IntToFloat(nParam1), DestroyObject(GetObjectByTag(sParam, 0), 0.0, 0, 0.0, 0));
}

