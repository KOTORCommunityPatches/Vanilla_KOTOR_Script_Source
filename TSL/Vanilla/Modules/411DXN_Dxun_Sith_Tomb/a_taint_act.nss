void main() {
	int nParam1 = GetScriptParameter(1);
	effect efAbilityInc;
	int int3;
	switch (nParam1) {
		case 0:
			DelayCommand(0.2, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
			break;
		case 1:
			break;
		case 2:
			if ((GetCurrentHitPoints(GetFirstPC()) > 30)) {
				efAbilityInc = EffectDamage(30, 8, 0);
			}
			else {
				efAbilityInc = EffectDamage((GetCurrentHitPoints(GetFirstPC()) - 1), 8, 0);
			}
			ApplyEffectToObject(2, efAbilityInc, GetFirstPC(), 0.0);
			efAbilityInc = EffectAbilityIncrease(0, 4);
			ApplyEffectToObject(1, efAbilityInc, GetFirstPC(), 360.0);
			efAbilityInc = EffectAbilityIncrease(2, 4);
			ApplyEffectToObject(1, efAbilityInc, GetFirstPC(), 360.0);
			DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
			break;
		case 3:
			efAbilityInc = EffectDamage(15, 8, 0);
			ApplyEffectToObject(2, efAbilityInc, GetFirstPC(), 0.0);
			DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
			break;
		case 4:
			if ((!GetHasSpell(45, GetFirstPC()))) {
				int3 = 45;
			}
			else {
				if ((!GetHasSpell(16, GetFirstPC()))) {
					int3 = 16;
				}
				else {
					if ((!GetHasSpell(50, GetFirstPC()))) {
						int3 = 50;
					}
					else {
						if ((!GetHasSpell(43, GetFirstPC()))) {
							int3 = 43;
						}
						else {
							if ((!GetHasSpell(7, GetFirstPC()))) {
								int3 = 7;
							}
							else {
								if ((!GetHasSpell(30, GetFirstPC()))) {
									int3 = 30;
								}
								else {
									if ((!GetHasSpell(9, GetFirstPC()))) {
										int3 = 9;
									}
									else {
										if ((!GetHasSpell(35, GetFirstPC()))) {
											int3 = 35;
										}
										else {
											if ((!GetHasSpell(38, GetFirstPC()))) {
												int3 = 38;
											}
											else {
												if ((!GetHasSpell(31, GetFirstPC()))) {
													int3 = 31;
												}
												else {
													if ((!GetHasSpell(32, GetFirstPC()))) {
														int3 = 32;
													}
													else {
														if ((!GetHasSpell(25, GetFirstPC()))) {
															int3 = 25;
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			SetGlobalNumber("411DXN_Learn_Power", int3);
			GrantSpell(int3, GetFirstPC());
			break;
	}
}
