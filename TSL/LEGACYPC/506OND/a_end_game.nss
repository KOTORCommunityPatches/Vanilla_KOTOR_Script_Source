void main() {
	int nParam1 = GetScriptParameter(1);
	object oTalia;
	object oSw_exit1;
	switch (nParam1) {
		case 0:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0);
			oTalia = GetObjectByTag("kavar", 0);
			oSw_exit1 = GetObjectByTag("wp_end_kavar", 0);
			SetLocalBoolean(oTalia, 40, 0);
			SetLocalBoolean(oTalia, 55, 1);
			SetLocalBoolean(oTalia, 10, 1);
			AssignCommand(oTalia, ClearAllActions());
			AssignCommand(oTalia, ActionJumpToObject(oSw_exit1, 1));
			DelayCommand(2.0, AssignCommand(oTalia, ActionMoveToObject(GetObjectByTag("wp_kavar_end_walk", 0), 0, 1.0)));
			DelayCommand(2.0, AssignCommand(oTalia, ActionDoCommand(SetFacing(65.0))));
			oTalia = GetObjectByTag("g_riiken", 0);
			oSw_exit1 = GetObjectByTag("wp_end_riiken", 0);
			SetLocalBoolean(oTalia, 53, 1);
			SetLocalBoolean(oTalia, 10, 1);
			AssignCommand(oTalia, ActionJumpToObject(oSw_exit1, 1));
			{
				object oKreia = GetObjectByTag("Kreia", 0);
				AssignCommand(oKreia, ClearAllActions());
				AssignCommand(oKreia, ActionJumpToObject(GetObjectByTag("sp_cnpc1_end", 0), 1));
			}
			break;
		case 1:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
			oSw_exit1 = GetObjectByTag("wp_end_pc_2", 0);
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionJumpToObject(oSw_exit1, 1));
			oTalia = GetObjectByTag("royal_corporal", 0);
			oSw_exit1 = GetObjectByTag("wp_end_corp", 0);
			AssignCommand(oTalia, ClearAllActions());
			AssignCommand(oTalia, ActionJumpToObject(oSw_exit1, 1));
			oSw_exit1 = GetObjectByTag("wp_end_talia_1", 0);
			oTalia = CreateObject(1, "npc_talia", GetLocation(oSw_exit1), 0);
			DelayCommand(0.3, AssignCommand(oTalia, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			oTalia = GetObjectByTag("kavar", 0);
			DelayCommand(0.4, DestroyObject(oTalia, 0.0, 1, 0.0, 0));
			oTalia = GetObjectByTag("g_riiken", 0);
			SetLocalBoolean(oTalia, 53, 0);
			break;
		case 2:
			oTalia = GetObjectByTag("talia", 0);
			oSw_exit1 = GetObjectByTag("wp_end_talia_2", 0);
			if (GetIsObjectValid(GetObjectByTag("mu_treasure1", 0))) {
				CreateItemOnObject("a_robe_21", GetFirstPC(), 1, 0);
			}
			if (GetIsObjectValid(GetObjectByTag("mu_treasure2", 0))) {
				CreateItemOnObject("a_gloves_12", GetFirstPC(), 1, 0);
			}
			if (GetIsObjectValid(GetObjectByTag("mu_treasure3", 0))) {
				CreateItemOnObject("u_l_crys_18", GetFirstPC(), 1, 0);
			}
			if (GetIsObjectValid(GetObjectByTag("mu_treasure4", 0))) {
				CreateItemOnObject("u_l_colo_09", GetFirstPC(), 1, 0);
			}
			GiveGoldToCreature(GetFirstPC(), 10000);
			DelayCommand(0.1, AssignCommand(oTalia, ActionMoveToObject(oSw_exit1, 0, 1.0)));
			break;
		case 3:
			break;
		case 4:
			oTalia = GetObjectByTag("royal_corporal", 0);
			oSw_exit1 = GetObjectByTag("wp_meditation_pc", 0);
			DelayCommand(0.2, AssignCommand(oTalia, ActionMoveToObject(oSw_exit1, 0, 1.0)));
			AssignCommand(GetFirstPC(), ClearAllActions());
			DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_end_pc_3", 0), 0, 1.0)));
			SetGlobalNumber("506OND_End", 1);
			DelayCommand(4.0, PlayMovie("OndMov06", 0));
			DelayCommand(4.0, StartNewModule("401DXN", "From_506OND", "", "", "", "", "", ""));
			break;
		case 5:
			oTalia = GetObjectByTag("kavar", 0);
			ChangeToStandardFaction(oTalia, 1);
			ExecuteScript("a_force_combat", oTalia, 0xFFFFFFFF);
			break;
		case 6:
			SetGlobalNumber("506OND_End", 2);
			GiveGoldToCreature(GetFirstPC(), 10000);
			DelayCommand(0.5, SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0));
			DelayCommand(0.5, PlayMovie("OndMov06", 0));
			DelayCommand(0.5, StartNewModule("401DXN", "From_506OND", "", "", "", "", "", ""));
			break;
		case 7:
			oTalia = GetObjectByTag("talia", 0);
			oSw_exit1 = GetObjectByTag("sw_exit1", 0);
			DelayCommand(0.1, AssignCommand(oTalia, ActionMoveToObject(oSw_exit1, 0, 1.0)));
			break;
		case 10:
			{
				object object45 = GetObjectByTag("kreia", 0);
				AssignCommand(object45, ClearAllActions());
				AssignCommand(object45, ActionJumpToObject(GetObjectByTag("sp_kreia_t", 0), 1));
				DelayCommand(0.5, AssignCommand(object45, ActionMoveToObject(GetObjectByTag("wp_kreia_t", 0), 0, 1.0)));
				SetLockOrientationInDialog(object45, 1);
			}
			break;
		case 11:
			{
				object object49 = GetObjectByTag("kreia", 0);
				SetLockOrientationInDialog(object49, 1);
			}
			break;
		case 12:
			ActionPauseConversation();
			{
				object oTobin = GetObjectByTag("tobin", 0);
				SetCreatureAILevel(oTobin, 3);
				AssignCommand(oTobin, ActionForceMoveToObject(GetObjectByTag("wp_bgone_pc", 0), 1, 1.0, 30.0));
				DelayCommand(8.0, DestroyObject(oTobin, 0.0, 0, 0.0, 0));
				DelayCommand(6.0, ActionResumeConversation());
			}
			break;
		case 13:
			SetGlobalFadeIn(1.5, 1.5, 0.0, 0.0, 0.0);
			{
				object oNpc_tobin = GetObjectByTag("tobin", 0);
				DestroyObject(oNpc_tobin, 0.0, 1, 0.0, 0);
				object oSp_kreia_t = GetObjectByTag("wp_tobin_dead", 0);
				if (GetIsObjectValid(oNpc_tobin)) {
					AurPostString("Tobin is still alive!", 5, 5, 5.0);
					ApplyEffectToObject(0, EffectResurrection(1), oNpc_tobin, 0.0);
					AssignCommand(oNpc_tobin, ClearAllActions());
					AssignCommand(oNpc_tobin, ActionJumpToObject(oSp_kreia_t, 1));
				}
				else {
					AurPostString("Tobin was killed!", 5, 5, 5.0);
				oNpc_tobin = CreateObject(1, "npc_tobin", GetLocation(oSp_kreia_t), 0);
					ApplyEffectToObject(0, EffectDamage((GetCurrentHitPoints(oNpc_tobin) - 1), 8, 0), oNpc_tobin, 0.0);
				}
				AssignCommand(oNpc_tobin, ActionPlayAnimation(30, 1.0, (-1.0)));
				object object59 = GetObjectByTag("kreia", 0);
				oSp_kreia_t = GetObjectByTag("sp_kreia_t", 0);
				if (GetIsObjectValid(object59)) {
					AssignCommand(object59, ClearAllActions());
					AssignCommand(object59, ActionJumpToObject(oSp_kreia_t, 1));
				}
				else {
				object59 = SpawnAvailableNPC(6, GetLocation(oSp_kreia_t));
				}
				AssignCommand(object59, ActionStartConversation(GetFirstPC(), "506kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 14:
			{
				object object64 = GetObjectByTag("tobin", 0);
				AssignCommand(object64, ClearAllActions());
				AssignCommand(object64, ActionPlayAnimation(19, 1.0, 1.0));
			}
			break;
	}
}

