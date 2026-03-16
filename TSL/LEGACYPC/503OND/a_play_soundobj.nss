void main() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	object object1 = GetObjectByTag(sParam, 0);
	if ((!nParam1)) {
		DelayCommand(IntToFloat(nParam2), SoundObjectPlay(object1));
	}
	else {
		DelayCommand(IntToFloat(nParam2), SoundObjectFadeAndStop(object1, IntToFloat(nParam3)));
	}
}

