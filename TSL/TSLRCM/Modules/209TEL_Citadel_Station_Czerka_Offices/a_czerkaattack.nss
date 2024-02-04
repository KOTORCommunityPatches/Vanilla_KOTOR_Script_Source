void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetGlobalBoolean("200TEL_Moza_Help")) {
		return;
	}
	if ((GetGlobalNumber("203TEL_Czerka_Attack") == 1)) {
		CreateObject(1, "203_moza", GetLocation(GetObjectByTag("wp_mozaattack_sp", 0)), 0);
		object o203_Moza = GetObjectByTag("203_Moza", 0);
		SetLocalBoolean(o203_Moza, 36, 1);
		AssignCommand(o203_Moza, ClearAllActions());
		AssignCommand(o203_Moza, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetGlobalBoolean("200TEL_Moza_Help", 1);
	}
}