void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC;
	object oWP_MEETMANDALORE;
	switch (nParam1) {
		case 0:
			DelayCommand(0.3, ActionStartConversation(GetFirstPC(), "mand_cs1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 1:
			AddJournalQuestEntry("explosivesit", 99, 0);
			AddJournalQuestEntry("missingm", 70, 0);
			AddJournalQuestEntry("scouthunt", 99, 0);
			AddJournalQuestEntry("tsupport", 99, 0);
			AddJournalQuestEntry("tcannoks", 99, 0);
			break;
		case 2:
			ActionStartConversation(GetFirstPC(), "sith_att", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
			break;
		case 3:
			SetGlobalNumber("403DXN_Second_Visit", 1);
			ExecuteScript("k_403_enter", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 4:
			SetGlobalNumber("502OND_End_First", 2);
			ExecuteScript("k_403_enter", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 5:
			AddAvailableNPCByTemplate(4, "p_handmaiden");
			AddAvailableNPCByTemplate(9, "p_visas");
			AddAvailableNPCByTemplate(7, "p_mira");
			ShowPartySelectionGUI("", 0xFFFFFFFF, 0xFFFFFFFF, 0);
			break;
		case 6:
			AssignCommand(GetObjectByTag("g_mandalore", 0), ActionStartConversation(GetFirstPC(), "sith_att", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 7:
			SetGlobalNumber("411DXN_Complete", 1);
			ExecuteScript("k_403_enter", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 8:
			SetGlobalNumber("500OND_DarkSide_Iziz", 1);
			break;
		case 9:
			SetLocalBoolean(GetObjectByTag("To_402", 0), 56, 1);
			break;
		case 10:
			SetGlobalNumber("403DXN_Second_Visit", 1);
		case 55:
			oPC = GetFirstPC();
			oWP_MEETMANDALORE = GetObjectByTag("WP_MEETMANDALORE", 0);
			AssignCommand(oPC, ActionJumpToObject(oWP_MEETMANDALORE, 1));
			break;
	}
}