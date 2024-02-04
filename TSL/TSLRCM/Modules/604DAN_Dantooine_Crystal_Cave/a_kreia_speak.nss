void main() {
	if ((GetGlobalNumber("604DAN_PC_Crystal") == 0)) {
		object oKreia_invis = GetObjectByTag("Kreia", 0);
		if ((!GetIsObjectValid(oKreia_invis))) {
			oKreia_invis = GetObjectByTag("kreia_invis", 0);
		}
		SetGlobalNumber("604DAN_PC_Crystal", 1);
		AssignCommand(oKreia_invis, ClearAllActions());
		AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "kreia_cr", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}