void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	DelayCommand(IntToFloat(nParam1), SoundObjectFadeAndStop(GetObjectByTag(sParam, 0), IntToFloat(nParam2)));
}