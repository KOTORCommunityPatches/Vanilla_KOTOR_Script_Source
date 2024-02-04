void main() {
	int int1 = GetJournalEntry("30003");
	if ((((((int1 == 11) || (int1 == 20)) || (int1 == 21)) || (int1 == 22)) || IsStealthed(GetPartyLeader()))) {
		return;
	}
	ActionStartConversation(GetPartyMemberByIndex(0), "", 0, 1, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
}