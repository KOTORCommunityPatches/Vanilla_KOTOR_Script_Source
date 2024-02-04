void main() {
	if ((GetGlobalNumber("202TEL_MeblaP") == 1)) {
		SetGlobalNumber("202TEL_MeblaP", 0);
		if ((GetLastPazaakResult() == 1)) {
			IncrementGlobalNumber("202TEL_Mebla", 1);
		}
		if ((GetLastPazaakResult() == 0)) {
			DecrementGlobalNumber("202TEL_Mebla", 1);
		}
	}
	AssignCommand(GetObjectByTag("Mebla", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}