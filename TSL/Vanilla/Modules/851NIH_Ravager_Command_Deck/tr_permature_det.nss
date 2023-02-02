void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 55, 1);
	AssignCommand(GetObjectByTag("det", 0), ActionStartConversation(GetFirstPC(), "851exp", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
