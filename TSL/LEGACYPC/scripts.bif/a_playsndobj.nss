void main() {
	int nParam1 = GetScriptParameter(1);
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	if (GetIsObjectValid(object1)) {
		DelayCommand(IntToFloat(nParam1), SoundObjectPlay(object1));
	}
}

