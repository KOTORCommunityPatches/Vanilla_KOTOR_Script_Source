void main() {
	object oHintDem = GetObjectByTag("HintDem", 0);
	if ((!GetLocalBoolean(oHintDem, 40))) {
		SetLocalBoolean(oHintDem, 40, 1);
		AssignCommand(GetObjectByTag("ProtonMis", 0), ActionStartConversation(GetFirstPC(), "hintdem", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
