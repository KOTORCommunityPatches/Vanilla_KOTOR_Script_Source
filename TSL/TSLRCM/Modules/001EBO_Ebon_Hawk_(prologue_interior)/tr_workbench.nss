void main() {
	object oTr_workbench = GetObjectByTag("tr_workbench", 0);
	if ((!GetLocalBoolean(oTr_workbench, 40))) {
		SetLocalBoolean(oTr_workbench, 40, 1);
		AssignCommand(oTr_workbench, ActionStartConversation(GetFirstPC(), "wrkbnch", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}