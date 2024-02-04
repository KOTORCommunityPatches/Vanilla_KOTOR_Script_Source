void main() {
	if ((GetGlobalNumber("101PER_Sion_Arrives") == 1)) {
		return;
	}
	SetGlobalNumber("101PER_Sion_Arrives", 1);
	object oAtton = GetObjectByTag("Atton", 0);
	if ((!GetIsObjectValid(oAtton))) {
		return;
	}
	AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "104Atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}