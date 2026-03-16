void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetGlobalBoolean("200TEL_Moza_Help")) {
		return;
	}
	if (GetGlobalBoolean("200TEL_Moza_Call")) {
		CreateObject(1, "203_moza", GetLocation(GetObjectByTag("wp_mozacall_sp", 0)), 0);
		object o203_Moza = GetObjectByTag("203_Moza", 0);
		AssignCommand(o203_Moza, ClearAllActions());
		AssignCommand(o203_Moza, ActionStartConversation(GetFirstPC(), "moza", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetGlobalBoolean("200TEL_Moza_Help", 1);
		SetGlobalBoolean("200TEL_Moza_Call", 0);
		SetGlobalNumber("203TEL_Czerka_Attack", 1);
	}
}

