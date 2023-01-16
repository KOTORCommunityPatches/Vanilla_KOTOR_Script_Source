void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetGlobalNumber("301NAR_Red_Eclipse_At") != 1)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		SetEncounterActive(1, OBJECT_SELF);
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		return;
	}
}

