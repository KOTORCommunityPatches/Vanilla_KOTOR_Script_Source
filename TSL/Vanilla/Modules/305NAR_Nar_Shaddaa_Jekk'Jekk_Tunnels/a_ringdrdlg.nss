void main() {
	DestroyObject(GetObjectByTag("Beasttenderkeycard", 0), 0.0, 0, 0.0, 1);
	if ((GetGlobalNumber("305NAR_PC_Saved") == 1)) {
		AssignCommand(GetObjectByTag("Visquis", 0), ActionStartConversation(GetPartyMemberByIndex(0), "visquis", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
