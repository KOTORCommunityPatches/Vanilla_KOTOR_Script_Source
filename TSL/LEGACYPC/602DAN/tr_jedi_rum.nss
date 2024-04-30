void main() {
	if (((!GetLocalBoolean(OBJECT_SELF, 40)) && (!GetGlobalNumber("604DAN_Vrook_Status")))) {
		AssignCommand(GetObjectByTag("dan_ctz_f1", 0), ActionStartConversation(GetFirstPC(), "jedi_rum", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(OBJECT_SELF, 40, 1);
	}
}

