void main() {
	int nLevel = GetHitDice(GetFirstPC());
	int int3 = 1;
	effect efAbilityInc;
	effect effect2;
	effect efTempFP;
	effect effect4;
	effect effect5;
	int int4;
	if ((((GetLevelByClass(4, OBJECT_SELF) > 0) || (GetLevelByClass(3, OBJECT_SELF) > 0)) || (GetLevelByClass(5, OBJECT_SELF) > 0))) {
		if (((nLevel >= 12) && (nLevel <= 14))) {
			efAbilityInc = EffectAbilityIncrease(4, 4);
			effect2 = EffectAbilityIncrease(1, 4);
			efTempFP = EffectTemporaryForcePoints(50);
			int4 = 50;
		}
		else {
			if ((nLevel >= 15)) {
				efAbilityInc = EffectAbilityIncrease(4, 6);
				effect2 = EffectAbilityIncrease(1, 6);
				efTempFP = EffectTemporaryForcePoints(100);
				int4 = 100;
			}
			else {
				int3 = 0;
			}
		}
		if ((int3 == 1)) {
			effect5 = EffectLinkEffects(efAbilityInc, effect2);
			effect5 = EffectLinkEffects(effect5, efTempFP);
		}
	}
	else {
		if ((GetSubRace(OBJECT_SELF) == 2)) {
			if (((nLevel >= 12) && (nLevel <= 14))) {
				efAbilityInc = EffectAbilityIncrease(0, 6);
				int4 = 60;
			}
			else {
				if ((nLevel >= 15)) {
					efAbilityInc = EffectAbilityIncrease(0, 10);
					int4 = 100;
				}
				else {
					int3 = 0;
				}
			}
			if ((int3 == 1)) {
				effect5 = efAbilityInc;
			}
		}
		else {
			if ((GetRacialType(OBJECT_SELF) == 5)) {
				if (((nLevel >= 12) && (nLevel <= 14))) {
					efAbilityInc = EffectAbilityIncrease(1, 6);
					int4 = 60;
				}
				else {
					if ((nLevel >= 15)) {
						efAbilityInc = EffectAbilityIncrease(1, 10);
						int4 = 100;
					}
					else {
						int3 = 0;
					}
				}
				if ((int3 == 1)) {
					effect5 = efAbilityInc;
				}
			}
			else {
				if (((nLevel >= 12) && (nLevel <= 14))) {
					efAbilityInc = EffectAbilityIncrease(0, 4);
					effect2 = EffectAbilityIncrease(1, 4);
					int4 = 50;
				}
				else {
					if ((nLevel >= 15)) {
						efAbilityInc = EffectAbilityIncrease(0, 6);
						effect2 = EffectAbilityIncrease(1, 6);
						int4 = 100;
					}
					else {
						int3 = 0;
					}
				}
				if ((int3 == 1)) {
					effect5 = EffectLinkEffects(efAbilityInc, effect2);
				}
			}
		}
	}
	if ((int4 > 0)) {
		int4 = (GetMaxHitPoints(OBJECT_SELF) + int4);
		SetMaxHitPoints(OBJECT_SELF, int4);
	}
	if ((int3 == 1)) {
		ApplyEffectToObject(2, effect5, OBJECT_SELF, 0.0);
	}
}

