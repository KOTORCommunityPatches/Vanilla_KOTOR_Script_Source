void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	SetGlobalBoolean("231TEL_Shield_Network", 1);
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	SetGlobalNumber("231TEL_BaoDur", 1);
	AssignCommand(oBaoDur, ClearAllActions());
	AssignCommand(oBaoDur, ActionStartConversation(GetFirstPC(), "231bdur", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
