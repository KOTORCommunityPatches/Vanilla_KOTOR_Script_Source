void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 33)) {
		return;
	}
	if ((GetGlobalNumber("203TEL_DroidInt_1") == 3)) {
		SetLocalBoolean(OBJECT_SELF, 33, 1);
		string string1 = "c_drdith";
		CreateObject(1, string1, GetLocation(GetObjectByTag("WP_DRDCZE1", 0)), 0);
		CreateObject(1, "n_duros001", GetLocation(GetObjectByTag("wp_chanozerka", 0)), 0);
		AssignCommand(GetObjectByTag("203_lorso", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

