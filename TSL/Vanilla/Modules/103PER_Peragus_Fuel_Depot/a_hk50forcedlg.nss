void main() {
	int nGlobal = GetGlobalNumber("103PER_Talk_HK50");
	if ((nGlobal != 0)) {
		return;
	}
	object oHK50 = GetObjectByTag("HK50", 0);
	if ((!GetIsObjectValid(oHK50))) {
		return;
	}
	AssignCommand(oHK50, ClearAllActions());
	AssignCommand(oHK50, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
