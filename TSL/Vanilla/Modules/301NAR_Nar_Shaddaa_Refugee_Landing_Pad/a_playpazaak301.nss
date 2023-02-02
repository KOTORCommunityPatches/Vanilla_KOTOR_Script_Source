void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	int nParam4 = GetScriptParameter(4);
	DelayCommand(IntToFloat(nParam4), PlayPazaak(nParam1, sParam, nParam2, nParam3, OBJECT_INVALID));
}
