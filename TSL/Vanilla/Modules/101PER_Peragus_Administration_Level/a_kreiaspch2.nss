void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if (GetLocalBoolean(OBJECT_SELF, 10)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 10, 1);
		SetKeepStealthInDialog(1);
		object oPrisonRoomDr = GetObjectByTag("PrisonRoomDr", 0);
		AssignCommand(oPrisonRoomDr, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
