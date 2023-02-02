void main() {
	int nParam1 = GetScriptParameter(1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oNihilus = GetObjectByTag("Nihilus", 0);
	switch (nParam1) {
		case 0:
			PlayRoomAnimation("853nih01", 5);
			SetLockOrientationInDialog(oVisasMarr, 1);
			SetLockOrientationInDialog(oNihilus, 1);
			ActionPauseConversation();
			SetGlobalFadeIn(2.0, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(0.1, AssignCommand(oVisasMarr, ActionDoCommand(SetFacing(270.0))));
			DelayCommand(0.1, AssignCommand(oVisasMarr, ActionPlayAnimation(35, 1.0, (-1.0))));
			DelayCommand(6.0, SetDialogPlaceableCamera(1));
			DelayCommand(6.0, PlayRoomAnimation("853nih01", 4));
			DelayCommand(10.0, AssignCommand(oVisasMarr, ActionPlayAnimation(19, 1.0, 1.0)));
			DelayCommand(12.0, AssignCommand(oVisasMarr, ActionMoveToObject(GetObjectByTag("wp_visas_walk1", 0), 0, 1.0)));
			DelayCommand(10.0, SetDialogPlaceableCamera(2));
			DelayCommand(14.0, AssignCommand(GetObjectByTag("VisasDoor", 0), ActionOpenDoor(GetObjectByTag("VisasDoor", 0))));
			DelayCommand(16.0, SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0));
			DelayCommand(18.0, ActionResumeConversation());
			break;
		case 1:
			SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
			ActionPauseConversation();
			AssignCommand(oVisasMarr, ClearAllActions());
			AssignCommand(oVisasMarr, ActionJumpToObject(GetObjectByTag("sp_visas", 0), 1));
			AssignCommand(oVisasMarr, ActionMoveToObject(GetObjectByTag("wp_visas_walk2", 0), 0, 1.0));
			DelayCommand(5.0, ActionResumeConversation());
			break;
		case 2:
			DelayCommand(1.0, AssignCommand(oNihilus, ActionDoCommand(SetFacing(0.0))));
			break;
		case 3:
			DelayCommand(1.6, AssignCommand(oNihilus, ActionPlayAnimation(121, 1.0, 2.0)));
			DelayCommand(1.6, AssignCommand(oVisasMarr, ClearAllActions()));
			DelayCommand(1.8, AssignCommand(oVisasMarr, ActionPlayAnimation(45, 1.0, 100.0)));
			break;
		case 4:
			AssignCommand(oVisasMarr, ActionPlayAnimation(4, 1.0, 100.0));
			break;
		case 5:
			ActionPauseConversation();
			AssignCommand(oVisasMarr, ActionMoveToObject(GetObjectByTag("sp_visas", 0), 0, 1.0));
			DelayCommand(7.0, SetGlobalFadeOut(0.1, 3.0, 0.0, 0.0, 0.0));
			DelayCommand(12.1, SetGlobalFadeIn(0.1, 1.0, 0.0, 0.0, 0.0));
			DelayCommand(10.0, ActionResumeConversation());
			DelayCommand(12.0, ExecuteScript("a_cleanup", OBJECT_SELF, 0xFFFFFFFF));
			DelayCommand(12.2, StartNewModule("000TEST", "", "", "", "", "", "", ""));
			break;
		case 6:
			AssignCommand(oNihilus, ClearAllActions());
			AssignCommand(oNihilus, ActionPlayAnimation(19, 1.0, 1.0));
			AssignCommand(oVisasMarr, ClearAllActions());
			AssignCommand(oNihilus, ActionPlayAnimation(19, 1.0, 1.0));
			break;
	}
}
