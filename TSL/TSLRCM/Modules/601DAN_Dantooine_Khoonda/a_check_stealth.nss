void main() {
	if ((GetGlobalNumber("602DAN_End") > 0)) {
		return;
	}
	if (IsStealthed(GetPartyLeader())) {
		SetLocalBoolean(GetObjectByTag("security_door", 0), 55, 1);
		AurPostString("Stealthed", 5, 5, 5.0);
	}
	else {
		SetLocalBoolean(GetObjectByTag("security_door", 0), 55, 0);
		AurPostString("NOT Stealthed", 5, 5, 5.0);
		if ((GetJournalEntry("khoondad") == 0)) {
			CreateObject(1, "g_militia_sec", GetLocation(GetObjectByTag("wp_militia_sec2", 0)), 0);
		}
	}
	DelayCommand(0.1, SetKeepStealthInDialog(1));
	DelayCommand(0.1, ActionStartConversation(GetPartyLeader(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}