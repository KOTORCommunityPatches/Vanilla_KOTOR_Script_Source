void main() {
	object oCArmourItem = GetItemInSlot(17, OBJECT_SELF);
	if (GetIsObjectValid(oCArmourItem)) {
		DelayCommand(0.01, ActionUnequipItem(oCArmourItem, 0));
		DelayCommand(0.015, DestroyObject(oCArmourItem, 0.0, 0, 0.0, 1));
	}
	int nGlobal = GetGlobalNumber("CANDEROUS_P_IMPLANT");
	int int4 = GetGlobalNumber("CANDEROUS_CUR_IMPLANT");
	switch (nGlobal) {
		case 1:
			{
				effect efRegen = EffectRegenerate(4, 6.0);
				RemoveEffectByExactMatch(OBJECT_SELF, efRegen);
			}
			break;
		case 2:
			{
				effect efAbilityInc = EffectAbilityIncrease(0, 4);
				RemoveEffectByExactMatch(OBJECT_SELF, efAbilityInc);
			}
			break;
		case 3:
			{
				effect effect5 = EffectAbilityIncrease(2, 4);
				RemoveEffectByExactMatch(OBJECT_SELF, effect5);
			}
			break;
		case 4:
			{
				effect effect7 = EffectAbilityIncrease(1, 4);
				RemoveEffectByExactMatch(OBJECT_SELF, effect7);
			}
			break;
	}
	switch (int4) {
		case 1:
			{
				effect effect9 = EffectRegenerate(4, 6.0);
				ApplyEffectToObject(2, effect9, OBJECT_SELF, 0.0);
			}
			break;
		case 2:
			{
				effect effect11 = EffectAbilityIncrease(0, 4);
				ApplyEffectToObject(2, effect11, OBJECT_SELF, 0.0);
			}
			break;
		case 3:
			{
				effect effect13 = EffectAbilityIncrease(2, 4);
				ApplyEffectToObject(2, effect13, OBJECT_SELF, 0.0);
			}
			break;
		case 4:
			{
				effect effect15 = EffectAbilityIncrease(1, 4);
				ApplyEffectToObject(2, effect15, OBJECT_SELF, 0.0);
			}
			break;
	}
}

