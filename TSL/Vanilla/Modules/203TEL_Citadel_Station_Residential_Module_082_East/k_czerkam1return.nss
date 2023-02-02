void main() {
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 3)) {
		string string1 = "c_drdith";
		CreateObject(1, string1, GetLocation(GetObjectByTag("WP_DRDCZE1", 0)), 0);
		AssignCommand(GetObjectByTag("203_chano", 0), ActionJumpToObject(GetObjectByTag("wp_chanozerka", 0), 1));
		AssignCommand(GetObjectByTag("203_lorso", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
