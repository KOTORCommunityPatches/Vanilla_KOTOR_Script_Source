// Byte code does not match

void main() {
	int nParam1 = GetScriptParameter(1);
	int int3 = 19;
	object oPC = GetFirstPC();
	switch (nParam1) {
		case 1:
			int3 = 10136;
			break;
			int3 = 10147;
			break;
			int3 = 10137;
			break;
			int3 = 10139;
			break;
			if ((nParam1 <= 8)) {
				if (((nParam1 % 2) == 1)) {
					ActionPauseConversation();
					SetLightsaberPowered(oPC, 1, 1, 1);
					AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(0.1, CreatureFlourishWeapon(oPC));
					DelayCommand(0.5, SetFakeCombatState(oPC, 1));
					DelayCommand(1.5, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(2.5, AssignCommand(oPC, PlayAnimation(int3, 1.0, 0.0)));
					DelayCommand(4.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(5.5, AssignCommand(oPC, PlayAnimation(int3, 1.0, 0.0)));
					DelayCommand(7.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(8.0, SetFakeCombatState(oPC, 0));
					DelayCommand(9.0, AssignCommand(oPC, SetLightsaberPowered(oPC, 1, 0, 1)));
					DelayCommand(9.0, ActionResumeConversation());
				}
				else {
					ActionPauseConversation();
					AssignCommand(oPC, ClearAllActions());
					SetLightsaberPowered(oPC, 1, 1, 1);
					SetFakeCombatState(oPC, 1);
					AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(1.5, AssignCommand(oPC, PlayAnimation(int3, 1.0, 0.0)));
					DelayCommand(3.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(4.0, ActionResumeConversation());
				}
			}
			else {
				if (((nParam1 % 2) == 1)) {
					AssignCommand(oPC, PlayAnimation(46, 1.0, (-1.0)));
				}
				else {
					effect efBeam;
					effect efVisual;
					object oLightningPoint;
					switch (nParam1) {
						case 10:
							efBeam = EffectBeam(2061, oPC, 0, 0);
							efVisual = EffectVisualEffect(1021, 0);
							oLightningPoint = GetObjectByTag("LightningPoint", 0);
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(10063, 1.0, (-1.0)));
							DelayCommand(0.33, ApplyEffectToObject(1, efBeam, oLightningPoint, 3.67));
							DelayCommand(4.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(4.0, ActionResumeConversation());
							break;
						case 12:
							efVisual = EffectVisualEffect(1005, 0);
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(46, 1.0, (-1.0)));
							ApplyEffectToObject(0, efVisual, oPC, 0.0);
							DelayCommand(1.5, ApplyEffectToObject(0, efVisual, oPC, 0.0));
							DelayCommand(3.0, ApplyEffectToObject(0, efVisual, oPC, 0.0));
							DelayCommand(4.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(4.0, ActionResumeConversation());
							break;
						case 14:
							efVisual = EffectVisualEffect(1010, 0);
							efVisual = EffectLinkEffects(efVisual, EffectVisualEffect(1015, 0));
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(46, 1.0, (-1.0)));
							ApplyEffectToObject(0, efVisual, oPC, 0.0);
							DelayCommand(1.5, ApplyEffectToObject(0, efVisual, oPC, 0.0));
							DelayCommand(3.0, ApplyEffectToObject(0, efVisual, oPC, 0.0));
							DelayCommand(4.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(4.0, ActionResumeConversation());
							break;
						case 16:
							efBeam = EffectBeam(2061, oPC, 0, 0);
							efVisual = EffectVisualEffect(1021, 0);
							oLightningPoint = GetObjectByTag("LightningPoint", 0);
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(10063, 1.0, (-1.0)));
							DelayCommand(0.33, ApplyEffectToObject(1, efBeam, oLightningPoint, 3.67));
							DelayCommand(4.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(4.0, ActionResumeConversation());
							break;
						case 18:
							efVisual = EffectVisualEffect(1005, 0);
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(10063, 1.0, (-1.0)));
							ApplyEffectToObject(0, efVisual, oPC, 0.0);
							DelayCommand(1.5, ApplyEffectToObject(0, efVisual, oPC, 0.0));
							DelayCommand(3.0, ApplyEffectToObject(0, efVisual, oPC, 0.0));
							DelayCommand(4.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(4.0, ActionResumeConversation());
							break;
						case 20:
							efVisual = EffectVisualEffect(1010, 0);
							efVisual = EffectLinkEffects(efVisual, EffectVisualEffect(1015, 0));
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(10063, 1.0, (-1.0)));
							ApplyEffectToObject(0, efVisual, oPC, 0.0);
							DelayCommand(1.5, ApplyEffectToObject(0, efVisual, oPC, 0.0));
							DelayCommand(3.0, ApplyEffectToObject(0, efVisual, oPC, 0.0));
							DelayCommand(4.0, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
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