void main() {
	int nParam1 = GetScriptParameter(1);
	object oTobin = GetObjectByTag("tobin", 0);
	object oNihilus = GetObjectByTag("nihilus", 0);
	switch (nParam1) {
		case 0:
			SoundObjectStop(GetObjectByTag("Choke", 0));
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
				object object10 = GetObjectByTag("Sith", 1);
				object object12 = GetObjectByTag("Sith", 2);
				ActionPauseConversation();
				SetLockOrientationInDialog(oTobin, 1);
				AssignCommand(oTobin, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_tobin", 0)), 0));
				AssignCommand(oSith, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sith1", 0)), 0));
				AssignCommand(object10, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sith2", 0)), 0));
				DelayCommand(6.0, SetDialogPlaceableCamera(11));
				DelayCommand(6.0, AssignCommand(object12, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_sith3", 0)), 0)));
				DelayCommand(6.0, AssignCommand(object12, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_sith3", 0))))));
				DelayCommand(6.0, AssignCommand(oNihilus, ActionDoCommand(SetFacing(0.0))));
				DelayCommand(10.5, ActionResumeConversation());
			}
			break;
		case 2:
			{
				object object19 = GetObjectByTag("Sith", 2);
				AssignCommand(object19, ActionJumpToObject(GetObjectByTag("wp_sith3a", 0), 1));
				AssignCommand(oNihilus, ActionPlayAnimation(121, 1.0, 100.0));
				AssignCommand(oTobin, ClearAllActions());
				AssignCommand(oTobin, ActionPlayAnimation(45, 1.0, 100.0));
				SoundObjectPlay(GetObjectByTag("choke", 0));
			}
			break;
		case 3:
			ActionPauseConversation();
			AssignCommand(oNihilus, ClearAllActions());
			AssignCommand(oNihilus, ActionMoveToObject(GetObjectByTag("wp_nihilus", 0), 0, 1.0));
			AssignCommand(oNihilus, ActionWait(1.0));
			DelayCommand(6.0, AssignCommand(oNihilus, ActionPlayAnimation(121, 1.0, 100.0)));
			DelayCommand(6.0, AssignCommand(oTobin, ClearAllActions()));
			DelayCommand(6.0, ActionResumeConversation());
			break;
		case 4:
			SetGlobalFadeOut(3.5, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(5.8, DestroyObject(GetObjectByTag("Nihilus", 0), 0.0, 0, 0.0, 0));
			DelayCommand(5.8, DestroyObject(GetObjectByTag("Tobin", 0), 0.0, 0, 0.0, 0));
			DelayCommand(5.8, DestroyObject(GetObjectByTag("Sith", 3), 0.0, 0, 0.0, 0));
			DelayCommand(5.8, DestroyObject(GetObjectByTag("Sith", 2), 0.0, 0, 0.0, 0));
			DelayCommand(5.8, DestroyObject(GetObjectByTag("Sith", 1), 0.0, 0, 0.0, 0));
			DelayCommand(5.8, DestroyObject(GetObjectByTag("Sith", 0), 0.0, 0, 0.0, 0));
			DelayCommand(5.9, StartNewModule("650DAN", "", "", "", "", "", "", ""));
			break;
		case 5:
			AssignCommand(oNihilus, ClearAllActions());
			AssignCommand(oNihilus, ActionPlayAnimation(19, 1.0, 1.0));
			AssignCommand(oNihilus, ActionWait(1.0));
			break;
		case 6:
			AssignCommand(oNihilus, ActionMoveToObject(GetObjectByTag("sp_nihilus_start", 0), 0, 1.0));
			break;
	}
}