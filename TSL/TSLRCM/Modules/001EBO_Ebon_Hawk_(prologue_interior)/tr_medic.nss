void main() {
	object oTr_medic = GetObjectByTag("tr_medic", 0);
	if ((!GetLocalBoolean(oTr_medic, 40))) {
		SetLocalBoolean(oTr_medic, 40, 1);
		DelayCommand(0.1, AssignCommand(GetObjectByTag("pc_invis", 0), ActionStartConversation(GetFirstPC(), "treatinj", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}