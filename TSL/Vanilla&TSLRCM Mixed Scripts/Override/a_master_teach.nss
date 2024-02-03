void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int int5 = 19;
	object oZezkaiel = OBJECT_INVALID;
	object oFlophouse_Secret = OBJECT_INVALID;
	if ((nParam1 == 1)) {
		oZezkaiel = GetObjectByTag("kavar", 0);
		if ((!GetIsObjectValid(oZezkaiel))) {
			return;
		}
		switch (nParam2) {
			case 1:
				int5 = 10136;
				break;
				int5 = 10147;
				break;
				int5 = 10137;
				break;
				int5 = 10139;
				break;
				break;
				if ((nParam1 == 2)) {
					oZezkaiel = GetObjectByTag("npc_vrook", 0);
					if ((!GetIsObjectValid(oZezkaiel))) {
						return;
					}
					switch (nParam2) {
						case 1:
							int5 = 10136;
							break;
							int5 = 10147;
							break;
							int5 = 10137;
							break;
							int5 = 10139;
							break;
							SetAreaUnescapable(0);
							break;
							if ((nParam1 == 3)) {
								oZezkaiel = GetObjectByTag("zezkaiel", 0);
								if ((!GetIsObjectValid(oZezkaiel))) {
									return;
								}
								switch (nParam2) {
									case 1:
										int5 = 10136;
										break;
										int5 = 10147;
										break;
										int5 = 10137;
										break;
										int5 = 10139;
										break;
										SetAreaUnescapable(0);
										oFlophouse_Secret = GetObjectByTag("Flophouse_Secret", 0);
										if (GetIsObjectValid(oFlophouse_Secret)) {
											SetLocked(oFlophouse_Secret, 0);
											AssignCommand(oFlophouse_Secret, ActionOpenDoor(oFlophouse_Secret));
										}
										break;
										if ((nParam2 <= 8)) {
											if (((nParam2 % 2) == 1)) {
												ActionPauseConversation();
												AssignCommand(oZezkaiel, ClearAllActions());
												ChangeToStandardFaction(oZezkaiel, 4);
												SetLightsaberPowered(oZezkaiel, 1, 1, 1);
												SetFakeCombatState(oZezkaiel, 1);
												AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0)));
												DelayCommand(1.5, AssignCommand(oZezkaiel, PlayAnimation(int5, 1.0, 0.0)));
												DelayCommand(3.0, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
												DelayCommand(4.0, ActionResumeConversation());
											}
											else {
												ActionPauseConversation();
												AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0)));
												DelayCommand(1.5, AssignCommand(oZezkaiel, PlayAnimation(int5, 1.0, 0.0)));
												DelayCommand(4.0, ActionResumeConversation());
												DelayCommand(5.0, SetFakeCombatState(oZezkaiel, 0));
												DelayCommand(6.0, SetLightsaberPowered(oZezkaiel, 0, 0, 0));
												DelayCommand(6.0, ChangeToStandardFaction(oZezkaiel, 5));
											}
										}
										else {
											if (((nParam2 % 2) == 1)) {
												AssignCommand(oZezkaiel, PlayAnimation(46, 1.0, (-1.0)));
											}
											else {
												effect efBeam;
												effect efVisual;
												object oLightningPoint;
												switch (nParam2) {
													case 10:
														efBeam = EffectBeam(2061, oZezkaiel, 0, 0);
														efVisual = EffectVisualEffect(1021, 0);
														oLightningPoint = GetObjectByTag("LightningPoint", 0);
														ActionPauseConversation();
														AssignCommand(oZezkaiel, PlayAnimation(10063, 1.0, (-1.0)));
														DelayCommand(0.33, ApplyEffectToObject(1, efBeam, oLightningPoint, 3.67));
														DelayCommand(4.0, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
														DelayCommand(4.0, ActionResumeConversation());
														break;
													case 12:
														efVisual = EffectVisualEffect(1005, 0);
														ActionPauseConversation();
														AssignCommand(oZezkaiel, PlayAnimation(46, 1.0, (-1.0)));
														ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0);
														DelayCommand(1.5, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
														DelayCommand(3.0, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
														DelayCommand(4.0, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
														DelayCommand(4.0, ActionResumeConversation());
														break;
													case 14:
														efVisual = EffectVisualEffect(1010, 0);
														efVisual = EffectLinkEffects(efVisual, EffectVisualEffect(1015, 0));
														ActionPauseConversation();
														AssignCommand(oZezkaiel, PlayAnimation(46, 1.0, (-1.0)));
														ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0);
														DelayCommand(1.5, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
														DelayCommand(3.0, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
														DelayCommand(4.0, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
														DelayCommand(4.0, ActionResumeConversation());
														break;
												}
											}
										}
									case 2:
									case 3:
									case 4:
									case 5:
									case 6:
									case 7:
									case 8:
								}
							}
						case 2:
						case 3:
						case 4:
						case 5:
						case 6:
						case 7:
						case 8:
					}
				}
			case 2:
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:
			case 8:
		}
	}
}

