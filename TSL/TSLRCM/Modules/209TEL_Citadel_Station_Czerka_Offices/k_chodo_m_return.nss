void main() {
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 3)) {
		string string1 = "c_drdith";
		CreateObject(1, string1, GetLocation(GetObjectByTag("WP_DRDITH1", 0)), 0);
		AssignCommand(GetObjectByTag("203_Habat", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if (((GetGlobalNumber("203TEL_Habat") == 11) && (!GetLocalBoolean(OBJECT_SELF, 40)))) {
		SetLocalBoolean(OBJECT_SELF, 40, 1);
		AssignCommand(GetObjectByTag("203_Habat", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}