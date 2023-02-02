void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	SetSoloMode(0);
	SetPartyLeader(0xFFFFFFFF);
	object o222TEL = GetObjectByTag("222TEL", 0);
	AssignCommand(o222TEL, ClearAllActions());
	AssignCommand(o222TEL, ActionStartConversation(GetFirstPC(), "222TEL", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
