void main() {
	object oPC = GetFirstPC();
	if ((GetIsObjectValid(GetItemPossessedBy(oPC, "datapad_merc")) && (GetGlobalNumber("604DAN_Vrook_Status") == 0))) {
		AddJournalQuestEntry("lostshad", 20, 0);
		SetGlobalNumber("604DAN_Vrook_Status", 1);
	}
	if ((GetIsObjectValid(GetItemPossessedBy(oPC, "datapad_kaev")) && (GetGlobalNumber("604DAN_Vrook_Status") == 0))) {
		AddJournalQuestEntry("lostshad", 22, 0);
		SetGlobalNumber("604DAN_Vrook_Status", 1);
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

