void main() {
	int nParam1 = GetScriptParameter(1);
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	object oNihilus = GetObjectByTag("nihilus", 0);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(0.4, 2.0, 0.0, 0.0, 0.0);
			SetLockOrientationInDialog(oDarthSion, 1);
			SetLockOrientationInDialog(oNihilus, 1);
			ClearAllActions();
			ActionPauseConversation();
			{
				object oG_sithtroop008 = CreateObject(1, "g_sithtroop008", GetLocation(GetObjectByTag(("sp_sith" + IntToString(5)), 0)), 0);
				object object8 = CreateObject(1, "g_sithtroop008", GetLocation(GetObjectByTag(("sp_sith" + IntToString(6)), 0)), 0);
				DelayCommand(1.0, AssignCommand(oDarthSion, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sion", 0)), 0)));
				DelayCommand(11.0, SetDialogPlaceableCamera(19));
				DelayCommand(6.2, AssignCommand(oG_sithtroop008, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sith5", 0)), 0)));
				DelayCommand(6.2, AssignCommand(oG_sithtroop008, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_sith5", 0))))));
				DelayCommand(6.0, AssignCommand(object8, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sith6", 0)), 0)));
				DelayCommand(6.0, AssignCommand(object8, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_sith6", 0))))));
				DelayCommand(13.0, AssignCommand(oNihilus, ActionDoCommand(SetFacing(0.0))));
				DelayCommand(14.0, ActionResumeConversation());
			}
			break;
		case 1:
			AssignCommand(oDarthSion, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sion2", 0)), 0));
			break;
		case 2:
			ActionPauseConversation();
			DelayCommand(2.0, SetLightsaberPowered(oDarthSion, 1, 1, 1));
			DelayCommand(2.8, AssignCommand(oNihilus, ActionMoveToObject(GetObjectByTag("wp_nihilus", 0), 1, 1.0)));
			DelayCommand(2.8, SetDialogPlaceableCamera(21));
			DelayCommand(5.0, AssignCommand(oNihilus, ActionPlayAnimation(121, 1.0, 100.0)));
			DelayCommand(3.9, SetDialogPlaceableCamera(24));
			{
				effect efPush = EffectForcePushTargeted(GetLocation(GetObjectByTag("Pusher", 0)), 0);
				DelayCommand(5.2, ApplyEffectToObject(0, efPush, GetObjectByTag("Sith", 0), 0.0));
				DelayCommand(5.2, ApplyEffectToObject(0, efPush, GetObjectByTag("Sith", 1), 0.0));
				DelayCommand(5.2, ApplyEffectToObject(0, efPush, oDarthSion, 0.0));
				DelayCommand(6.0, ApplyEffectToObject(1, EffectVisualEffect(6002, 0), GetFirstPC(), 1.0));
				DelayCommand(6.0, SetDialogPlaceableCamera(25));
				DelayCommand(6.0, SetLightsaberPowered(oDarthSion, 1, 0, 0));
				DelayCommand(6.0, SetGlobalFadeOut(0.1, 2.0, 0.0, 0.0, 0.0));
				DelayCommand(8.0, ActionResumeConversation());
			}
			break;
		case 3:
			break;
		case 4:
			ExecuteScript("a_cleanup", OBJECT_SELF, 0xFFFFFFFF);
			DelayCommand(0.2, StartNewModule("000TEST", "", "", "", "", "", "", ""));
			break;
		case 5:
			break;
	}
}

