void main() {
	object oHK501 = GetObjectByTag("HK501", 0);
	if ((!GetIsObjectValid(oHK501))) {
		return;
	}
	AssignCommand(oHK501, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

