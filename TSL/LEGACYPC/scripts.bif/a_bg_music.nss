void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	object oArea = GetArea(OBJECT_SELF);
	float float1 = IntToFloat(nParam2);
	float float3 = IntToFloat(nParam3);
	if (nParam1) {
		DelayCommand(float1, AurPostString("Playing Background Music", 5, 5, 5.0));
		DelayCommand(float1, MusicBackgroundPlay(oArea));
	}
	else {
		DelayCommand(float1, AurPostString("Stopping Background Music", 5, 5, 5.0));
		DelayCommand(float1, MusicBackgroundStop(oArea));
		if (((!nParam3) == 0)) {
			DelayCommand((float1 + float3), AurPostString("Playing Background Music", 5, 5, 5.0));
			DelayCommand((float1 + float3), MusicBackgroundPlay(oArea));
		}
	}
}

