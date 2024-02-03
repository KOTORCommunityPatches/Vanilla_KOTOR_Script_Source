void main() {
	object oHK50 = GetObjectByTag("HK50", 0);
	if ((!GetIsObjectValid(oHK50))) {
		return;
	}
	AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "hk50", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

