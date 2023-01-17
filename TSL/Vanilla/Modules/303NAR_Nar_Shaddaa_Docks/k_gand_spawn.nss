void main() {
	if ((GetLocalBoolean(OBJECT_SELF, 30) || (GetGlobalNumber("303NAR_Gand_Attack") != 1))) {
		return;
	}
	SetEncounterActive(1, OBJECT_SELF);
	SetLocalBoolean(OBJECT_SELF, 30, 1);
}

