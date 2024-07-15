void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
		AssignCommand(GetObjectByTag("DarthSion", 0), ActionMoveToObject(GetObjectByTag("wp_sioncut_1", 0), 0, 1.0));
		AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_903kreia_sp", 0), 1));
		SetLockOrientationInDialog(GetObjectByTag("DarthSion", 0), 1);
	}
	else {
		if ((nParam1 == 2)) {
			CreateObject(1, "sithasscut1", GetLocation(GetObjectByTag("wp_sithass1_1", 0)), 0);
			CreateObject(1, "sithasscut2", GetLocation(GetObjectByTag("wp_sithass2_1", 0)), 0);
			CreateObject(1, "sithasscut3", GetLocation(GetObjectByTag("wp_sithass3_1", 0)), 0);
			CreateObject(1, "sithasscut4", GetLocation(GetObjectByTag("wp_sithass4_1", 0)), 0);
			CreateObject(1, "sithasscut5", GetLocation(GetObjectByTag("wp_sithass5_1", 0)), 0);
			CreateObject(1, "sithasscut6", GetLocation(GetObjectByTag("wp_sithass6_1", 0)), 0);
			AssignCommand(GetObjectByTag("SithAssassinCut1", 0), ActionMoveToObject(GetObjectByTag("wp_sithass1_2", 0), 0, 1.0));
			AssignCommand(GetObjectByTag("SithAssassinCut2", 0), ActionMoveToObject(GetObjectByTag("wp_sithass2_2", 0), 0, 1.0));
			AssignCommand(GetObjectByTag("SithAssassinCut3", 0), ActionMoveToObject(GetObjectByTag("wp_sithass3_2", 0), 0, 1.0));
			AssignCommand(GetObjectByTag("SithAssassinCut4", 0), ActionMoveToObject(GetObjectByTag("wp_sithass4_2", 0), 0, 1.0));
			AssignCommand(GetObjectByTag("SithAssassinCut5", 0), ActionMoveToObject(GetObjectByTag("wp_sithass5_2", 0), 0, 1.0));
			AssignCommand(GetObjectByTag("SithAssassinCut6", 0), ActionMoveToObject(GetObjectByTag("wp_sithass6_2", 0), 0, 1.0));
		}
		else {
			if ((nParam1 == 3)) {
				object oPC = GetFirstPC();
				object oD_entrance = GetObjectByTag("d_entrance", 0);
				SetLightsaberPowered(oPC, 1, 1, 0);
				AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_903kreia_1", 0), 0, 1.0));
				DelayCommand(4.0, AssignCommand(oD_entrance, ActionOpenDoor(oD_entrance)));
			}
			else {
				if ((nParam1 == 4)) {
					effect efVisual = EffectVisualEffect(8001, 0);
					object oSithAssassinCut1 = GetObjectByTag("SithAssassinCut1", 0);
					object oSithAssassinCut2 = GetObjectByTag("SithAssassinCut2", 0);
					object oSithAssassinCut3 = GetObjectByTag("SithAssassinCut3", 0);
					object oSithAssassinCut4 = GetObjectByTag("SithAssassinCut4", 0);
					object oSithAssassinCut5 = GetObjectByTag("SithAssassinCut5", 0);
					object oSithAssassinCut6 = GetObjectByTag("SithAssassinCut6", 0);
					AssignCommand(oSithAssassinCut1, ActionMoveToObject(GetObjectByTag("wp_sithass1_3", 0), 0, 1.0));
					AssignCommand(oSithAssassinCut2, ActionMoveToObject(GetObjectByTag("wp_sithass2_3", 0), 0, 1.0));
					AssignCommand(oSithAssassinCut3, ActionMoveToObject(GetObjectByTag("wp_sithass3_3", 0), 0, 1.0));
					AssignCommand(oSithAssassinCut4, ActionMoveToObject(GetObjectByTag("wp_sithass4_3", 0), 0, 1.0));
					AssignCommand(oSithAssassinCut5, ActionMoveToObject(GetObjectByTag("wp_sithass5_3", 0), 0, 1.0));
					AssignCommand(oSithAssassinCut6, ActionMoveToObject(GetObjectByTag("wp_sithass6_3", 0), 0, 1.0));
					object oBeltItem = GetItemInSlot(10, oSithAssassinCut1);
					object object55 = GetItemInSlot(10, oSithAssassinCut2);
					object object57 = GetItemInSlot(10, oSithAssassinCut3);
					object object59 = GetItemInSlot(10, oSithAssassinCut4);
					object object61 = GetItemInSlot(10, oSithAssassinCut5);
					object object63 = GetItemInSlot(10, oSithAssassinCut6);
					DelayCommand(0.5, ApplyEffectToObject(1, efVisual, oSithAssassinCut1, 2.0));
					DelayCommand(0.5, ApplyEffectToObject(1, efVisual, oSithAssassinCut2, 2.0));
					DelayCommand(0.5, ApplyEffectToObject(1, efVisual, oSithAssassinCut3, 2.0));
					DelayCommand(0.5, ApplyEffectToObject(1, efVisual, oSithAssassinCut4, 2.0));
					DelayCommand(0.5, ApplyEffectToObject(1, efVisual, oSithAssassinCut5, 2.0));
					DelayCommand(0.5, ApplyEffectToObject(1, efVisual, oSithAssassinCut6, 2.0));
					DelayCommand(1.0, AssignCommand(oSithAssassinCut1, ActionUseSkill(2, oSithAssassinCut1, 0, oBeltItem)));
					DelayCommand(1.0, AssignCommand(oSithAssassinCut2, ActionUseSkill(2, oSithAssassinCut2, 0, object55)));
					DelayCommand(1.0, AssignCommand(oSithAssassinCut3, ActionUseSkill(2, oSithAssassinCut3, 0, object57)));
					DelayCommand(1.0, AssignCommand(oSithAssassinCut4, ActionUseSkill(2, oSithAssassinCut4, 0, object59)));
					DelayCommand(1.0, AssignCommand(oSithAssassinCut5, ActionUseSkill(2, oSithAssassinCut5, 0, object61)));
					DelayCommand(1.0, AssignCommand(oSithAssassinCut6, ActionUseSkill(2, oSithAssassinCut6, 0, object63)));
					DelayCommand(4.0, DestroyObject(oSithAssassinCut1, 0.0, 1, 0.0, 0));
					DelayCommand(4.0, DestroyObject(oSithAssassinCut2, 0.0, 1, 0.0, 0));
					DelayCommand(4.0, DestroyObject(oSithAssassinCut3, 0.0, 1, 0.0, 0));
					DelayCommand(4.0, DestroyObject(oSithAssassinCut4, 0.0, 1, 0.0, 0));
					DelayCommand(4.0, DestroyObject(oSithAssassinCut5, 0.0, 1, 0.0, 0));
					DelayCommand(4.0, DestroyObject(oSithAssassinCut6, 0.0, 1, 0.0, 0));
				}
				else {
					if ((nParam1 == 5)) {
						SetLightsaberPowered(GetFirstPC(), 0, 1, 0);
						DelayCommand(5.0, DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0));
					}
				}
			}
		}
	}
}

