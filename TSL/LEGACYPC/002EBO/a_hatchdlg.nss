void main() {
	if ((!GetLocalBoolean(GetObjectByTag("openhatch", 0), 40))) {
		ActionStartConversation(GetPartyMemberByIndex(0), "hatch", 0, 1, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
}

