void main() {
	if (GetIsXBox()) {
		ActionStartConversation(GetPartyMemberByIndex(0), "", 0, 1, 1, "", "", "", "", "", "", 0, (-1), 260, 0);
	}
	else {
		ActionStartConversation(GetPartyMemberByIndex(0), "", 0, 1, 1, "", "", "", "", "", "", 0, 10, 430, 0);
	}
}

