void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		SetLocalBoolean(GetObjectByTag("camera_switch", 0), 31, 1);
		AssignCommand(GetObjectByTag("camera_switch", 0), ActionStartConversation(GetFirstPC(), "201shu", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

