void main() {
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if (GetLocalBoolean(GetObjectByTag("GamGuardLuxB", 0), 36)) {
		SetLocalBoolean(GetObjectByTag("GamGuardLuxB", 0), 36, 0);
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 36, 1);
	AssignCommand(GetObjectByTag("203_slusk", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("203_slusk", 0), ActionJumpToObject(GetObjectByTag("wp_slusk2", 0), 1));
	SetLocalBoolean(GetObjectByTag("203_slusk", 0), 36, 1);
	SetPartyLeader(0xFFFFFFFF);
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetObjectByTag("203_slusk", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

