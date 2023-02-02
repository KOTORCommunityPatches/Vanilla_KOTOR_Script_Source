void main() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "g_i_medeqpmnt01"))) {
		object oMed_bin = GetObjectByTag("med_bin", 0);
		if ((!GetLocalBoolean(oMed_bin, 40))) {
			SetLocalBoolean(oMed_bin, 40, 1);
			AssignCommand(oMed_bin, ActionStartConversation(GetFirstPC(), "got_meds", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "G_I_DRDREPEQP001"))) {
		object oWorkbench = GetObjectByTag("Workbench", 0);
		if ((!GetLocalBoolean(oWorkbench, 40))) {
			SetLocalBoolean(oWorkbench, 40, 1);
			AddJournalQuestEntry("tutorial_garage", 90, 0);
		}
	}
	if (GetIsObjectValid(GetItemPossessedBy(GetPartyLeader(), "G_I_TRAPKIT004"))) {
		SetGlobalNumber("002EBO_Has_Mine", 1);
	}
}
