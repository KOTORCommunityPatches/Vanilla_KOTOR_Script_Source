void main() {
	object oRea_terminal = GetObjectByTag("rea_terminal", 0);
	if (GetIsObjectValid(oRea_terminal)) {
		AssignCommand(oRea_terminal, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}