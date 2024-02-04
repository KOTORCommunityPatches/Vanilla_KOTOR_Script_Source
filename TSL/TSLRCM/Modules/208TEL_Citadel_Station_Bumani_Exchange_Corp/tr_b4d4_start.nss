void main() {
	if ((GetGlobalNumber("203TEL_Merc_Attack") == 2)) {
		SetLocalBoolean(GetObjectByTag("203_b4D4", 0), 36, 1);
		AddJournalQuestEntry("merc_attack", 10, 0);
	}
	else {
		DelayCommand(2.5, AssignCommand(GetObjectByTag("203_b4d4", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}