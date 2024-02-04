void main() {
	object oPC = GetFirstPC();
	object oT3M4 = GetObjectByTag("T3M4", 0);
	object oCandHolo = GetObjectByTag("CandHolo", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			AssignCommand(oT3M4, ActionJumpToLocation(Location(Vector(49.48461, 13.76047, 1.90688), 90.0)));
			SetLockOrientationInDialog(oT3M4, 1);
			AssignCommand(oPC, ActionJumpToLocation(Location(Vector(48.10149, 13.33831, 1.90688), 90.0)));
			SetLockOrientationInDialog(oPC, 1);
			CreateObject(1, "CandHolo", Location(Vector(49.39932, 18.08281, 1.90688), 0.0), 0);
			CreateObject(1, "revanholo", Location(Vector(50.27711, 16.5326, 1.90688), 90.0), 0);
			break;
		case 1:
			ActionPauseConversation();
			SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(6.0, ActionResumeConversation());
			break;
		case 2:
			ActionPauseConversation();
			DelayCommand(3.0, ActionResumeConversation());
			break;
		case 3:
			ActionPauseConversation();
			DelayCommand(8.0, ActionResumeConversation());
			break;
		case 4:
			ActionPauseConversation();
			SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0);
			DelayCommand(5.0, ActionResumeConversation());
			break;
		case 5:
			DestroyObject(oCandHolo, 0.0, 0, 0.0, 0);
			SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
			break;
		case 6:
			ActionPauseConversation();
			DelayCommand(4.0, ActionResumeConversation());
			break;
		case 7:
			ActionPauseConversation();
			AssignCommand(oPC, ActionPlayAnimation(100, 0.0, 2.0));
			DelayCommand(2.0, ActionResumeConversation());
			break;
		case 8:
			ActionPauseConversation();
			AssignCommand(oPC, ActionPlayAnimation(100, 0.0, 6.6));
			DelayCommand(7.0, AssignCommand(oPC, ActionPlayAnimation(100, 0.0, 6.6)));
			DelayCommand(8.0, ActionResumeConversation());
			break;
		case 9:
			DestroyObject(GetObjectByTag("RevanHolo", 0), 0.0, 0, 0.0, 0);
			break;
	}
}