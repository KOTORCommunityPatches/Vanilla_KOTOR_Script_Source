void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oKreia_invis = GetObjectByTag("kreia_invis", 0);
	if ((!GetIsObjectValid(oKreia_invis))) {
		return;
	}
	if (GetLocalBoolean(oKreia_invis, 55)) {
		return;
	}
	object oPC = GetFirstPC();
	object object7 = GetNextPC();
	object object9 = GetNextPC();
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(0.6, AssignCommand(oPC, ClearAllActions()));
	DelayCommand(0.6, AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_neartomb", 0), 1)));
	DelayCommand(0.6, AssignCommand(object7, ClearAllActions()));
	DelayCommand(0.6, AssignCommand(object7, ActionJumpToObject(GetObjectByTag("wp_cnpc1", 0), 1)));
	DelayCommand(0.6, AssignCommand(object9, ClearAllActions()));
	DelayCommand(0.6, AssignCommand(object9, ActionJumpToObject(GetObjectByTag("wp_cnpc2", 0), 1)));
	DelayCommand(1.0, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(0.7, AssignCommand(oKreia_invis, ClearAllActions()));
	DelayCommand(0.7, AssignCommand(oKreia_invis, ActionStartConversation(oPC, "sec_tomb", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}