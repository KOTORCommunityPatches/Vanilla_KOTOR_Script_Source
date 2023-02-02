void main() {
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	object oGamGuardLuxDoor = GetObjectByTag("GamGuardLuxDoor", 0);
	if (GetLocalBoolean(oGamGuardLuxDoor, 36)) {
		SetLocalBoolean(oGamGuardLuxDoor, 36, 0);
		return;
	}
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetLocalBoolean(OBJECT_SELF, 36, 1);
	object o203_slusk = GetObjectByTag("203_slusk", 0);
	SetLocalBoolean(o203_slusk, 36, 1);
	AssignCommand(o203_slusk, ClearAllActions());
	AssignCommand(o203_slusk, ActionJumpToObject(GetObjectByTag("wp_slusk2", 0), 1));
	SetPartyLeader(0xFFFFFFFF);
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, AssignCommand(o203_slusk, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
