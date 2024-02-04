void main() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	object oRemote = GetObjectByTag("Remote", 0);
	object oPC = GetFirstPC();
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		ActionPauseConversation();
		AssignCommand(oBaoDur, ActionJumpToLocation(Location(Vector(63.34913, 25.30092, 1.8), 225.0)));
		SetLockOrientationInDialog(oBaoDur, 1);
		AssignCommand(oAtton, ActionJumpToLocation(Location(Vector(56.24332, 30.1395, 1.8), 0.42701)));
		AssignCommand(oAtton, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_atton_cut_6", 0)), 0));
		SetLockOrientationInDialog(oAtton, 0);
		DelayCommand(3.2, ActionResumeConversation());
		DelayCommand(1.8, AssignCommand(oRemote, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_remote_02", 0)), 0)));
	}
	if ((nParam1 == 1)) {
		ActionPauseConversation();
		AssignCommand(oRemote, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_remote_03", 0)), 0));
		DelayCommand(1.2, AssignCommand(oBaoDur, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_gspawn_baodur", 0)), 0)));
		DelayCommand(2.5, AssignCommand(oBaoDur, ClearAllActions()));
		DelayCommand(2.6, AssignCommand(oBaoDur, SetFacing(310.0)));
		DelayCommand(1.5, ActionResumeConversation());
	}
	if ((nParam1 == 2)) {
		DelayCommand(1.0, AssignCommand(oRemote, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_remote_04", 0)), 0)));
	}
	if ((nParam1 == 3)) {
		SetLockOrientationInDialog(oBaoDur, 0);
	}
	if ((nParam1 == 4)) {
		AssignCommand(GetObjectByTag("BaoDur", 0), SetFacingPoint(GetPosition(GetObjectByTag("Atton", 0))));
	}
	if ((nParam1 == 5)) {
		AssignCommand(oBaoDur, SetFacing(313.0));
	}
	if ((nParam1 == 6)) {
		ActionPauseConversation();
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oKreia, ClearAllActions());
		AssignCommand(oPC, ActionJumpToLocation(Location(Vector(52.572357, 75.16124, 1.8000002), 270.0)));
		AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_kreia_cut_6", 0))));
		DelayCommand(2.0, ActionResumeConversation());
	}
}