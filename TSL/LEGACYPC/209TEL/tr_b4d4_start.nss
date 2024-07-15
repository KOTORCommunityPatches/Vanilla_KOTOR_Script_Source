void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if ((GetGlobalNumber("203TEL_Merc_Attack") == 2)) {
			if (GetLocalBoolean(OBJECT_SELF, 30)) {
				return;
			}
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			SetLocalBoolean(GetObjectByTag("203_b4D4", 0), 36, 1);
			DelayCommand(0.5, AddJournalQuestEntry("merc_attack", 10, 0));
		}
		else {
			if (GetLocalBoolean(OBJECT_SELF, 31)) {
				return;
			}
			SetLocalBoolean(OBJECT_SELF, 31, 1);
			AssignCommand(GetObjectByTag("203_b4d4", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

