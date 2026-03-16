void main() {
	if ((GetLocalBoolean(OBJECT_SELF, 30) || (GetGlobalNumber("300NAR_Bounty_Attack") != 2))) {
		return;
	}
	SetEncounterActive(1, OBJECT_SELF);
	SetLocalBoolean(OBJECT_SELF, 30, 1);
}

