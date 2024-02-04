void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	if (nParam1) {
		DelayCommand(IntToFloat(nParam2), SoundObjectFadeAndStop(GetObjectByTag(sParam, 0), IntToFloat(nParam3)));
	}
	else {
		DelayCommand(IntToFloat(nParam2), SoundObjectPlay(GetObjectByTag(sParam, 0)));
	}
}