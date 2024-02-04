void main() {
	effect efAttackInc = EffectAttackIncrease(3, 0);
	effect efSpeedInc = EffectMovementSpeedIncrease(110);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			if ((!GetLocalBoolean(GetObjectByTag("hk51_1_ct", 0), 40))) {
				AdjustCreatureAttributes(GetFirstPC(), 1, 1);
				SetLocalBoolean(GetObjectByTag("hk51_1_ct", 0), 40, 1);
			}
			break;
		case 2:
			if ((!GetLocalBoolean(GetObjectByTag("hk51_1_ct", 0), 40))) {
				AdjustCreatureAttributes(GetFirstPC(), 1, 1);
				SetLocalBoolean(GetObjectByTag("hk51_1_ct", 0), 40, 1);
			}
			ApplyEffectToObject(2, efAttackInc, GetFirstPC(), 0.0);
			ApplyEffectToObject(2, efSpeedInc, GetFirstPC(), 0.0);
			break;
	}
}