// Prototypes
void sub1(int intParam1, int intParam2, int intParam3, int intParam4, string stringParam5);

void sub1(int intParam1, int intParam2, int intParam3, int intParam4, string stringParam5) {
	if (GetLocalBoolean(OBJECT_SELF, 20)) {
		DelayCommand(IntToFloat((Random(intParam4) + intParam2)), sub1(intParam1, intParam2, intParam3, intParam4, stringParam5));
		AurPostString("Rumbling", 5, 5, 5.0);
		SoundObjectPlay(GetObjectByTag(stringParam5, 0));
		ApplyEffectToObject(1, EffectVisualEffect(6002, 0), GetFirstPC(), IntToFloat((Random(intParam3) + intParam1)));
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	int nParam4 = GetScriptParameter(4);
	int nParam5 = GetScriptParameter(5);
	string sParam = GetScriptStringParameter();
	if ((nParam1 == 0)) {
		sub1(nParam2, nParam3, nParam4, nParam5, sParam);
		SetLocalBoolean(GetFirstPC(), 20, 1);
	}
	else {
		SetLocalBoolean(GetFirstPC(), 20, 0);
	}
}
