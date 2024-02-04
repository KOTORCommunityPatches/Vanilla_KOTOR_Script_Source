void main() {
	int nGlobal = GetGlobalNumber("151HAR_Kreia_Mission");
	if ((nGlobal != 0)) {
		return;
	}
	object oKreia = GetObjectByTag("Kreia", 0);
	if ((!GetIsObjectValid(oKreia))) {
		return;
	}
	SetGlobalNumber("151HAR_Kreia_Mission", 1);
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "151Kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}