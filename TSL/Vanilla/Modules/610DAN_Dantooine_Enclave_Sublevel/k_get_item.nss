void main() {
	object oPC = GetFirstPC();
	if ((GetIsObjectValid(GetItemPossessedBy(oPC, "datapad_merc")) && (GetGlobalNumber("604DAN_Vrook_Status") == 0))) {
		AddJournalQuestEntry("lostshad", 20, 0);
		SetGlobalNumber("604DAN_Vrook_Status", 1);
	}
	if ((GetIsObjectValid(GetItemPossessedBy(oPC, "g_i_evap_mod")) && (!GetLocalBoolean(OBJECT_SELF, 30)))) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		if ((GetJournalEntry("danthief") > 0)) {
			AddJournalQuestEntry("danthief", 30, 0);
		}
		else {
			AddJournalQuestEntry("danthief", 31, 0);
		}
	}
	object object5;
	if ((!GetLocalBoolean(OBJECT_SELF, 31))) {
		if (GetIsObjectValid(GetItemPossessedBy(oPC, "qu_fakewill"))) {
			SetLocalBoolean(OBJECT_SELF, 31, 1);
			DelayCommand(0.5, DisplayDatapad(GetObjectByTag("qu_fakewill", 0)));
		}
		else {
			if (GetIsObjectValid(GetItemPossessedBy(oPC, "qu_deadwill"))) {
				SetLocalBoolean(OBJECT_SELF, 31, 1);
				DelayCommand(0.5, DisplayDatapad(GetObjectByTag("qu_deadwill", 0)));
			}
		}
	}
}

