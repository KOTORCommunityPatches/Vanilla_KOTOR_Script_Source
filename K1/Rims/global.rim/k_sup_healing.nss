// Globals
	float floatGLOB_1 = 1.0;
	int intGLOB_1;
	int intGLOB_2;
	int intGLOB_3;
	int intGLOB_4;
	int intGLOB_5;
	int intGLOB_6;
	int intGLOB_7;

// Prototypes
void sub1(int intParam1, object objectParam2);

void sub1(int intParam1, object objectParam2) {
	int int1 = 0;
	effect efNext = GetFirstEffect(objectParam2);
	while (GetIsEffectValid(efNext)) {
		if ((GetEffectType(efNext) == intParam1)) {
			int1 = 1;
			RemoveEffect(objectParam2, efNext);
		}
		efNext = GetNextEffect(objectParam2);
	}
}

void main() {
	int int1 = GetSpellId();
	int int3 = GetSkillRank(7, OBJECT_SELF);
	effect efHeal;
	int int5 = 1;
	if ((int1 == 64)) {
		int3 = (int3 + (10 + GetAbilityModifier(4, OBJECT_SELF)));
	}
	else {
		if ((int1 == 65)) {
			int3 = ((20 + (int3 * 2)) + GetAbilityModifier(4, OBJECT_SELF));
		}
		else {
			if ((int1 == 66)) {
				int3 = ((30 + (int3 * 3)) + GetAbilityModifier(4, OBJECT_SELF));
			}
			else {
				if ((int1 == 67)) {
					sub1(31, OBJECT_SELF);
					int5 = 0;
				}
				else {
					if ((int1 == 84)) {
						int3 = ((GetSkillRank(5, OBJECT_SELF) + GetAbilityModifier(3, OBJECT_SELF)) + 15);
					}
					else {
						if ((int1 == 127)) {
							int3 = (((GetSkillRank(5, OBJECT_SELF) * 2) + GetAbilityModifier(3, OBJECT_SELF)) + 25);
						}
						else {
							if ((int1 == 128)) {
								int3 = (((GetSkillRank(5, OBJECT_SELF) * 3) + GetAbilityModifier(3, OBJECT_SELF)) + 35);
							}
							else {
								if ((int1 == 129)) {
									int5 = 0;
									int int15 = 30;
									effect efVisual = EffectVisualEffect(1005, 0);
									int int16 = 0;
									object oNPC = GetPartyMemberByIndex(int16);
									while ((int16 < 3)) {
										if (GetIsObjectValid(oNPC)) {
											if (GetIsDead(oNPC)) {
												ApplyEffectToObject(0, EffectResurrection(), oNPC, 0.0);
											}
											ApplyEffectToObject(0, efVisual, oNPC, 0.0);
											ApplyEffectToObject(0, EffectHeal(int15), oNPC, 0.0);
										}
										(int16++);
										oNPC = GetPartyMemberByIndex(int16);
									}
								}
							}
						}
					}
				}
			}
		}
	}
	if ((int5 == 1)) {
		efHeal = EffectHeal(int3);
		ApplyEffectToObject(0, efHeal, OBJECT_SELF, 0.0);
		if ((GetTag(OBJECT_SELF) == "HK47")) {
			ApplyEffectToObject(0, EffectVisualEffect(1048, 0), OBJECT_SELF, 0.0);
		}
	}
}

