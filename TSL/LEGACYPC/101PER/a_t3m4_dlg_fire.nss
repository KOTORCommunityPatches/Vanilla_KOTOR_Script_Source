void main() {
	object oT3m4 = GetObjectByTag("t3m4", 0);
	if (GetIsObjectValid(oT3m4)) {
		AssignCommand(oT3m4, ActionStartConversation(GetFirstPC(), "101t3m4", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

