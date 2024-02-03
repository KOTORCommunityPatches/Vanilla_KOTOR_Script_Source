// Prototypes
void sub2(object objectParam1);
void sub1(object objectParam1, float floatParam2, int intParam3);

void sub2(object objectParam1) {
	effect efNext = GetFirstEffect(objectParam1);
	int nEfType;
	while (GetIsEffectValid(efNext)) {
		nEfType = GetEffectType(efNext);
		if (((((((((((((((((((((nEfType == 31) || (nEfType == 27)) || (nEfType == 29)) || (nEfType == 25)) || (nEfType == 30)) || (nEfType == 39)) || (nEfType == 41)) || (nEfType == 47)) || (nEfType == 49)) || (nEfType == 51)) || (nEfType == 43)) || (nEfType == 45)) || (nEfType == 53)) || (nEfType == 55)) || (nEfType == 67)) || (nEfType == 11)) || (nEfType == 24)) || (nEfType == 79)) || (nEfType == 81)) || (nEfType == 80))) {
			DelayCommand(0.1, RemoveEffect(objectParam1, efNext));
		}
		efNext = GetNextEffect(objectParam1);
	}
}

void sub1(object objectParam1, float floatParam2, int intParam3) {
	if (intParam3) {
		ApplyEffectToObject(0, EffectResurrection(100), objectParam1, 0.0);
	}
	{
		int int1 = FloatToInt((IntToFloat(GetMaxHitPoints(objectParam1)) * floatParam2));
		int int4 = FloatToInt((IntToFloat(GetMaxForcePoints(objectParam1)) * floatParam2));
		ApplyEffectToObject(0, EffectHeal(int1), objectParam1, 0.0);
		ApplyEffectToObject(0, EffectHealForcePoints(int4), objectParam1, 0.0);
		ApplyEffectToObject(0, EffectVisualEffect(1019, 0), objectParam1, 0.0);
		sub2(objectParam1);
	}
}

void main() {
	if ((GetGlobalNumber("000_Before_Visas_Trn") > 0)) {
		sub1(GetLastPlayerDied(), 1.0, 1);
		ExecuteScript("k_trainend", GetArea(GetFirstPC()), 201);
		SetGlobalNumber("003_PC_died_Vis", 1);
	}
}

