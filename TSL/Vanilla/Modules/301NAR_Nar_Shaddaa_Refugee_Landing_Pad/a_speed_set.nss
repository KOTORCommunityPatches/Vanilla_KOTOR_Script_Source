void main() {
	int int1 = (GetScriptParameter(1) - 100);
	int nParam2 = GetScriptParameter(2);
	float float1 = IntToFloat(nParam2);
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	effect efSpeedInc;
	if ((int1 < 0)) {
		efSpeedInc = EffectMovementSpeedDecrease((-int1));
	}
	else {
		efSpeedInc = EffectMovementSpeedIncrease(int1);
	}
	if ((nParam2 != 0)) {
		ApplyEffectToObject(1, efSpeedInc, object1, float1);
	}
	else {
		ApplyEffectToObject(2, efSpeedInc, object1, 0.0);
	}
}
