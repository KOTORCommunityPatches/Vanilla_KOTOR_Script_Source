void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("203TEL_Czerka_Attack") != 1)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if (GetSpellAcquired(178, GetFirstPC())) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		AssignCommand(OBJECT_SELF, ClearAllActions());
		AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "precog", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		return;
	}
}

