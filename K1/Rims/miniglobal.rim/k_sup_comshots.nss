// Prototypes
int sub1(int intParam1);

int sub1(int intParam1) {
	if (((intParam1 == 69) || (intParam1 == 72))) {
		if ((GetHasSpellEffect(69, OBJECT_SELF) || GetHasSpellEffect(72, OBJECT_SELF))) {
			return 1;
		}
	}
	else {
		if (((intParam1 == 70) || (intParam1 == 73))) {
			if ((GetHasSpellEffect(70, OBJECT_SELF) || GetHasSpellEffect(73, OBJECT_SELF))) {
				return 1;
			}
		}
		else {
			if (((intParam1 == 71) || (intParam1 == 74))) {
				if ((GetHasSpellEffect(71, OBJECT_SELF) || GetHasSpellEffect(74, OBJECT_SELF))) {
					return 1;
				}
			}
			else {
				if ((((intParam1 == 75) || (intParam1 == 76)) || (intParam1 == 77))) {
					if (((GetHasSpellEffect(75, OBJECT_SELF) || GetHasSpellEffect(76, OBJECT_SELF)) || GetHasSpellEffect(77, OBJECT_SELF))) {
						return 1;
					}
				}
			}
		}
	}
	return 0;
}

void main() {
	int int1 = GetSpellId();
	effect effect1;
	effect efAttackInc;
	int int3;
	if ((!sub1(int1))) {
		if ((int1 == 69)) {
			efAttackInc = EffectAbilityIncrease(0, 4);
			int3 = 32;
		}
		else {
			if ((int1 == 70)) {
				efAttackInc = EffectAbilityIncrease(1, 4);
				efAttackInc = EffectLinkEffects(efAttackInc, EffectMovementSpeedIncrease(20));
				int3 = 33;
			}
			else {
				if ((int1 == 71)) {
					efAttackInc = EffectAbilityIncrease(2, 4);
					int3 = 34;
				}
				else {
					if ((int1 == 72)) {
						efAttackInc = EffectAbilityIncrease(0, 6);
						int3 = 35;
					}
					else {
						if ((int1 == 73)) {
							efAttackInc = EffectAbilityIncrease(1, 6);
							efAttackInc = EffectLinkEffects(efAttackInc, EffectMovementSpeedIncrease(30));
							int3 = 36;
						}
						else {
							if ((int1 == 74)) {
								efAttackInc = EffectAbilityIncrease(2, 6);
								int3 = 37;
							}
							else {
								if ((int1 == 75)) {
									effect1 = EffectTemporaryHitpoints(8);
									efAttackInc = EffectAttackIncrease(1, 0);
									efAttackInc = EffectLinkEffects(efAttackInc, EffectDamageIncrease(1, 8));
									int3 = 38;
								}
								else {
									if ((int1 == 76)) {
										effect1 = EffectTemporaryHitpoints(16);
										efAttackInc = EffectAttackIncrease(2, 0);
										efAttackInc = EffectLinkEffects(efAttackInc, EffectDamageIncrease(2, 8));
										int3 = 39;
									}
									else {
										if ((int1 == 77)) {
											effect1 = EffectTemporaryHitpoints(25);
											efAttackInc = EffectAttackIncrease(3, 0);
											efAttackInc = EffectLinkEffects(efAttackInc, EffectDamageIncrease(3, 8));
											int3 = 40;
										}
									}
								}
							}
						}
					}
				}
			}
		}
		efAttackInc = SetEffectIcon(efAttackInc, int3);
		ApplyEffectToObject(1, efAttackInc, GetSpellTargetObject(), 120.0);
		if ((((int1 == 75) || (int1 == 76)) || (int1 == 77))) {
			ApplyEffectToObject(1, effect1, GetSpellTargetObject(), 120.0);
		}
	}
}

