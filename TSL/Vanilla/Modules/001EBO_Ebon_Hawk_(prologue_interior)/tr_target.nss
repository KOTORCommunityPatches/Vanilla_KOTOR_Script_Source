void main() {
	object oTr_target = GetObjectByTag("tr_target", 0);
	if ((!GetLocalBoolean(oTr_target, 40))) {
		SetLocalBoolean(oTr_target, 40, 1);
		DelayCommand(0.1, AssignCommand(oTr_target, ActionStartConversation(GetFirstPC(), "target", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
