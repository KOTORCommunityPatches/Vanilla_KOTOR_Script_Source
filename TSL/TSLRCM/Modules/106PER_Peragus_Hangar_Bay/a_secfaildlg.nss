void main() {
	if ((GetGlobalNumber("000_Lock_Hint") == 0)) {
		SetGlobalNumber("000_Lock_Hint", 1);
		ActionStartConversation(GetPartyMemberByIndex(0), "", 0, 1, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
}