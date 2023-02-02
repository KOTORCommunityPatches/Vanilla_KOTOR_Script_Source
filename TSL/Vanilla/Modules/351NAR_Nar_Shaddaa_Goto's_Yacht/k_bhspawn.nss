void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetGlobalNumber("351NAR_Bounty_Board") == 0)) {
		return;
	}
	SetEncounterActive(1, OBJECT_SELF);
	SetLocalBoolean(OBJECT_SELF, 30, 1);
}
