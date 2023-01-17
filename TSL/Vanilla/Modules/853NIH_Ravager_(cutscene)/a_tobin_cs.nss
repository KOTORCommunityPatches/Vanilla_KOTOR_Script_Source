void main() {
	int nParam1 = GetScriptParameter(1);
	object oTobin = GetObjectByTag("tobin", 0);
	object oNihilus = GetObjectByTag("nihilus", 0);
	switch (nParam1) {
		case 0:
			SetLockOrientationInDialog(oTobin, 1);
			SetLockOrientationInDialog(oNihilus, 1);
			ActionPauseConversation();
			SetGlobalFadeIn(0.4, 2.0, 0.0, 0.0, 0.0);
			{
				int int3 = 0;
				int3 = 0;
				while ((int3 < 4)) {
					CreateObject(1, "g_sithtroop008", GetLocation(GetObjectByTag(("sp_sith" + IntToString((int3 + 1))), 0)), 0);
					(int3++);
				}
				DelayCommand(3.0, ActionResumeConversation());
			}
			break;
		case 1:
			{
				object oSith = GetObjectByTag("Sith", 0);
				object object9 = GetObjectByTag("Sith", 1);
				object object11 = GetObjectByTag("Sith", 2);
				SetLockOrientationInDialog(oTobin, 1);
				AssignCommand(oTobin, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_tobin", 0)), 0));
				AssignCommand(oSith, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sith1", 0)), 0));
				AssignCommand(object9, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sith2", 0)), 0));
				DelayCommand(6.0, SetDialogPlaceableCamera(11));
				DelayCommand(6.0, AssignCommand(object11, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sith3", 0)), 0)));
				DelayCommand(6.0, AssignCommand(object11, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_sith3", 0))))));
				DelayCommand(6.0, AssignCommand(oNihilus, ActionDoCommand(SetFacing(0.0))));
			}
			break;
		case 2:
			{
				object object18 = GetObjectByTag("Sith", 2);
				AssignCommand(object18, ActionJumpToObject(GetObjectByTag("wp_sith3a", 0), 1));
				AssignCommand(oNihilus, ActionPlayAnimation(121, 1.0, 100.0));
				AssignCommand(oTobin, ClearAllActions());
				AssignCommand(oTobin, ActionPlayAnimation(45, 1.0, 100.0));
				DelayCommand(2.0, SetDialogPlaceableCamera(13));
			}
			break;
		case 3:
			AssignCommand(oTobin, ClearAllActions());
			AssignCommand(oTobin, ActionPlayAnimation(19, 1.0, 1.0));
			AssignCommand(oNihilus, ClearAllActions());
			AssignCommand(oNihilus, ActionMoveToObject(GetObjectByTag("wp_nihilus", 0), 0, 1.0));
			AssignCommand(oNihilus, ActionWait(1.0));
			DelayCommand(6.0, AssignCommand(oNihilus, ActionPlayAnimation(121, 1.0, 100.0)));
			DelayCommand(6.0, AssignCommand(oTobin, ActionPlayAnimation(45, 1.0, 100.0)));
			DelayCommand(7.5, SetDialogPlaceableCamera(15));
			break;
		case 4:
			SetGlobalFadeOut(0.3, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(2.3, ExecuteScript("a_cleanup", OBJECT_SELF, 0xFFFFFFFF));
			DelayCommand(2.5, StartNewModule("000TEST", "", "", "", "", "", "", ""));
			break;
		case 5:
			AssignCommand(oNihilus, ClearAllActions());
			AssignCommand(oNihilus, ActionPlayAnimation(19, 1.0, 1.0));
			AssignCommand(oNihilus, ActionWait(1.0));
			break;
		case 6:
			AssignCommand(oNihilus, ActionMoveToObject(GetObjectByTag("sp_nihilus_start", 0), 0, 1.0));
			AssignCommand(oTobin, ClearAllActions());
			AssignCommand(oTobin, ActionPlayAnimation(19, 1.0, 1.0));
			break;
	}
}

