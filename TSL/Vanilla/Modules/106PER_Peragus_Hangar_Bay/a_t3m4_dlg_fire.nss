void main() {
	object oT3m40 = GetObjectByTag("t3m40", 0);
	if (GetIsObjectValid(oT3m40)) {
		AssignCommand(oT3m40, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
