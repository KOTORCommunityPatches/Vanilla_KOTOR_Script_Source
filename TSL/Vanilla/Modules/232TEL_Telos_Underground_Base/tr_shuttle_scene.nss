void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		if ((!GetLocalBoolean(OBJECT_SELF, 36))) {
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			SetLocalBoolean(GetObjectByTag("BaoDur", 0), 36, 1);
			AssignCommand(GetObjectByTag("BaoDur", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("BaoDur", 0), ActionStartConversation(GetFirstPC(), "232bdur", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
