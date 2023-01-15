void main() {
	int nParam1 = GetScriptParameter(1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
			ActionPauseConversation();
			DelayCommand(1.0, AssignCommand(oVisasMarr, ActionForceMoveToObject(GetObjectByTag("wp_visas_meditation", 0), 0, 1.0, 30.0)));
			SetLockOrientationInDialog(oVisasMarr, 1);
			DelayCommand(10.0, ActionResumeConversation());
			break;
		case 1:
			AssignCommand(oVisasMarr, ActionPlayAnimation(35, 1.0, (-1.0)));
			{
				object object4 = GetObjectByTag("VisasMarr", 0);
				if (GetIsObjectValid(object4)) {
				int nAlign = GetAlignmentGoodEvil(object4);
				if ((nAlign == 2)) {
					DelayCommand(2.0, PlayRoomAnimation("851nih46", 2));
					DelayCommand(8.2, PlayRoomAnimation("851nih46", 3));
				}
				else {
					DelayCommand(2.0, PlayRoomAnimation("851nih46", 5));
					DelayCommand(8.2, PlayRoomAnimation("851nih46", 6));
				}
				}
			}
			break;
		case 2:
			ActionPauseConversation();
			SetLockOrientationInDialog(oVisasMarr, 0);
			DelayCommand(1.0, AssignCommand(oVisasMarr, ActionPlayAnimation(19, 1.0, 1.0)));
			DelayCommand(3.0, AssignCommand(oVisasMarr, ActionForceMoveToObject(GetObjectByTag("sp_visas_meditation", 0), 0, 1.0, 30.0)));
			DelayCommand(8.0, ActionResumeConversation());
			{
				object object7 = GetObjectByTag("VisasMarr", 0);
				if (GetIsObjectValid(object7)) {
				int int7 = GetAlignmentGoodEvil(object7);
				if ((int7 == 2)) {
					PlayRoomAnimation("851nih46", 1);
				}
				else {
					PlayRoomAnimation("851nih46", 4);
				}
				}
			}
			break;
		case 3:
			AddBonusForcePoints(oVisasMarr, 50);
			DelayCommand(1.0, DisplayMessageBox(136050, "lbl_ilside"));
			break;
		case 4:
			AddBonusForcePoints(oVisasMarr, 50);
			DelayCommand(1.0, DisplayMessageBox(136051, "lbl_idside"));
			break;
		case 5:
			{
				object object9 = GetObjectByTag("VisasMarr", 0);
				if (GetIsObjectValid(object9)) {
				int int10 = GetAlignmentGoodEvil(object9);
				if ((int10 == 2)) {
				}
				}
			}
			break;
	}
}

