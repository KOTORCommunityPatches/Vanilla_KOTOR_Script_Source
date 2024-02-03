void main() {
	int nParam1 = GetScriptParameter(1);
	int int3 = 19;
	object oPC = GetFirstPC();
	object oZezkaiel = OBJECT_INVALID;
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	int nLocal = GetLocalNumber(oInvisoKreia, 12);
	switch (nLocal) {
		case 1:
			oZezkaiel = GetObjectByTag("kavar", 0);
			break;
		case 2:
			oZezkaiel = GetObjectByTag("npc_vrook", 0);
			break;
		case 3:
			oZezkaiel = GetObjectByTag("zezkaiel", 0);
			break;
	}
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
					AssignCommand(oZezkaiel, ClearAllActions());
					SetLightsaberPowered(oZezkaiel, 1, 1, 0);
					AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(0.1, CreatureFlourishWeapon(oZezkaiel));
					DelayCommand(0.5, SetFakeCombatState(oZezkaiel, 1));
					DelayCommand(1.5, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(4.5, AssignCommand(oZezkaiel, PlayAnimation(int3, 1.0, 0.0)));
					DelayCommand(5.5, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
					AssignCommand(oPC, ClearAllActions());
					SetLightsaberPowered(oPC, 1, 1, 0);
					AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(0.1, CreatureFlourishWeapon(oPC));
					DelayCommand(0.5, SetFakeCombatState(oPC, 1));
					DelayCommand(1.5, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(4.6, CreatureFlourishWeapon(oPC));
					DelayCommand(5.0, SetFakeCombatState(oPC, 1));
					DelayCommand(6.5, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(6.5, ActionResumeConversation());
				}
				else {
					ActionPauseConversation();
					AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(2.6, CreatureFlourishWeapon(oPC));
					DelayCommand(3.0, SetFakeCombatState(oPC, 1));
					DelayCommand(4.5, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(1.5, AssignCommand(oZezkaiel, PlayAnimation(int3, 1.0, 0.0)));
					DelayCommand(4.0, ActionResumeConversation());
				}
			}
			else {
				if (((nParam1 % 2) == 1)) {
					SetLightsaberPowered(oZezkaiel, 1, 1, 0);
					DelayCommand(0.1, CreatureFlourishWeapon(oZezkaiel));
					DelayCommand(0.5, SetFakeCombatState(oZezkaiel, 1));
					DelayCommand(1.5, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
					AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(4.5, CreatureFlourishWeapon(oZezkaiel));
					DelayCommand(5.0, SetFakeCombatState(oZezkaiel, 1));
					DelayCommand(6.5, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
					AssignCommand(oPC, ClearAllActions());
					SetLightsaberPowered(oPC, 1, 1, 0);
					AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
					DelayCommand(0.1, CreatureFlourishWeapon(oPC));
					DelayCommand(0.5, SetFakeCombatState(oPC, 1));
					DelayCommand(1.5, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(4.6, CreatureFlourishWeapon(oPC));
					DelayCommand(5.0, SetFakeCombatState(oPC, 1));
					DelayCommand(6.5, AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0))));
					DelayCommand(6.5, ActionResumeConversation());
				}
				else {
					effect efBeam;
					effect efVisual;
					object oLightningPoint;
					switch (nParam1) {
						case 10:
							efBeam = EffectBeam(2061, oZezkaiel, 0, 0);
							efVisual = EffectVisualEffect(1021, 0);
							oLightningPoint = GetObjectByTag("LightningPoint", 0);
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
							AssignCommand(oZezkaiel, PlayAnimation(10063, 1.0, (-1.0)));
							DelayCommand(0.33, ApplyEffectToObject(1, efBeam, oLightningPoint, 3.67));
							DelayCommand(4.0, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(6.0, CreatureFlourishWeapon(oZezkaiel));
							DelayCommand(6.5, SetFakeCombatState(oZezkaiel, 1));
							DelayCommand(7.5, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(7.5, ActionResumeConversation());
							break;
						case 12:
							efVisual = EffectVisualEffect(1005, 0);
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
							AssignCommand(oZezkaiel, PlayAnimation(10063, 1.0, (-1.0)));
							ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0);
							DelayCommand(1.5, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
							DelayCommand(3.0, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
							DelayCommand(4.0, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(6.0, CreatureFlourishWeapon(oZezkaiel));
							DelayCommand(6.5, SetFakeCombatState(oZezkaiel, 1));
							DelayCommand(7.5, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(7.5, ActionResumeConversation());
							break;
						case 14:
							efVisual = EffectVisualEffect(1010, 0);
							efVisual = EffectLinkEffects(efVisual, EffectVisualEffect(1015, 0));
							ActionPauseConversation();
							AssignCommand(oPC, PlayAnimation(19, 1.0, (-1.0)));
							AssignCommand(oZezkaiel, PlayAnimation(10063, 1.0, (-1.0)));
							ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0);
							DelayCommand(1.5, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
							DelayCommand(3.0, ApplyEffectToObject(0, efVisual, oZezkaiel, 0.0));
							DelayCommand(4.0, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(6.0, CreatureFlourishWeapon(oZezkaiel));
							DelayCommand(6.5, SetFakeCombatState(oZezkaiel, 1));
							DelayCommand(7.5, AssignCommand(oZezkaiel, PlayAnimation(19, 1.0, (-1.0))));
							DelayCommand(7.5, ActionResumeConversation());
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

