void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		ClearAllActions();
		AssignCommand(GetFirstPC(), ActionStartConversation(GetFirstPC(), "hangcam", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
