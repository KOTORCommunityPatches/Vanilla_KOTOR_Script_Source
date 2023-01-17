void main() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "G_I_DRDREPEQP001"))) {
		object oWorkbench = GetObjectByTag("Workbench", 0);
		if ((!GetLocalBoolean(oWorkbench, 41))) {
			SetLocalBoolean(oWorkbench, 41, 1);
			AssignCommand(oWorkbench, ActionStartConversation(GetFirstPC(), "rep_kit", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

