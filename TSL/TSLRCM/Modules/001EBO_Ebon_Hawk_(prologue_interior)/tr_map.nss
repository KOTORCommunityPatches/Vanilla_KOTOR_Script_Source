void main() {
	object oTr_map = GetObjectByTag("tr_map", 0);
	if ((!GetLocalBoolean(oTr_map, 40))) {
		SetLocalBoolean(oTr_map, 40, 1);
		DelayCommand(0.1, AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "map", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}