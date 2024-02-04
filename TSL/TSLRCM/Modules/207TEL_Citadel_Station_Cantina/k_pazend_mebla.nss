void main() {
	object oMebla = GetObjectByTag("mebla", 0);
	AssignCommand(oMebla, ClearAllActions());
	AssignCommand(oMebla, ActionStartConversation(GetFirstPC(), "mebla", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	if (((GetGlobalBoolean("G_Paz_JustPlayed") == 1) && (GetLastPazaakResult() == 1))) {
		SetGlobalNumber("202TEL_Mebla", (GetGlobalNumber("202TEL_Mebla") + 1));
	}
	if (((GetGlobalBoolean("G_Paz_JustPlayed") == 1) && (GetLastPazaakResult() == 0))) {
		SetGlobalNumber("202TEL_Mebla", 0);
	}
}