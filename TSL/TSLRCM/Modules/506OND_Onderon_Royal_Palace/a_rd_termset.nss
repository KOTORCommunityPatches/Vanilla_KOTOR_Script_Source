void main() {
	int nParam1 = GetScriptParameter(1);
	object oFf_outer;
	object oVa_officer;
	object oMn_eastsecurity;
	switch (nParam1) {
		case 0:
			SetGlobalNumber("506OND_RD_Termset", 1);
			oFf_outer = GetObjectByTag("ff_outer", 0);
			AssignCommand(oFf_outer, ClearAllActions());
			SetLocked(oFf_outer, 1);
			AssignCommand(oFf_outer, ActionOpenDoor(oFf_outer));
			break;
		case 1:
			DelayCommand(0.1, AssignCommand(GetObjectByTag("force_cage", 0), ActionPlayAnimation(202, 1.0, 0.0)));
			DelayCommand(1.0, AssignCommand(GetObjectByTag("g_riiken", 0), ActionMoveToObject(GetObjectByTag("wp_beast_capt_end", 0), 0, 1.0)));
			break;
		case 2:
			if ((GetGlobalNumber("506OND_Slicer_Dead") == 0)) {
				oVa_officer = GetObjectByTag("kiph", 0);
				SetLocalBoolean(oVa_officer, 40, 1);
				ActionPauseConversation();
				DelayCommand(1.9, AssignCommand(oVa_officer, ClearAllActions()));
				DelayCommand(3.0, AssignCommand(oVa_officer, ActionPlayAnimation(0, 1.0, 1.0)));
				DelayCommand(5.0, AssignCommand(oVa_officer, SetFacing(270.0)));
				DelayCommand(5.8, AssignCommand(oVa_officer, ActionPlayAnimation(104, 1.0, 0.0)));
				DelayCommand(8.8, AssignCommand(oVa_officer, SetFacing(90.0)));
				DelayCommand(8.9, AssignCommand(oVa_officer, ActionPlayAnimation(15, 1.0, 10.0)));
				DelayCommand(9.1, SetLocalBoolean(oVa_officer, 40, 0));
				SetLocalBoolean(OBJECT_SELF, 51, 1);
				ActionWait(11.0);
				ActionResumeConversation();
			}
			break;
		case 3:
			oVa_officer = GetObjectByTag("va_officer", 0);
			if ((GetJournalEntry("deadline") == 31)) {
				SetLocalBoolean(oVa_officer, 45, 1);
				DelayCommand(0.1, ActionStartConversation(GetFirstPC(), "tob_door", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			else {
				SetLocalBoolean(oVa_officer, 40, 1);
				AddJournalQuestEntry("deadline", 21, 0);
			}
			oMn_eastsecurity = GetObjectByTag("mn_westsecurity", 0);
			AssignCommand(oVa_officer, ClearAllActions());
			AssignCommand(oVa_officer, ActionJumpToObject(oMn_eastsecurity, 1));
			break;
		case 4:
			oVa_officer = GetObjectByTag("va_officer", 0);
			if ((GetJournalEntry("deadline") == 21)) {
				SetLocalBoolean(oVa_officer, 45, 1);
				DelayCommand(0.1, ActionStartConversation(GetFirstPC(), "tob_door", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			else {
				SetLocalBoolean(oVa_officer, 40, 1);
				AddJournalQuestEntry("deadline", 31, 0);
			}
			oMn_eastsecurity = GetObjectByTag("mn_eastsecurity", 0);
			AssignCommand(oVa_officer, ClearAllActions());
			AssignCommand(oVa_officer, ActionJumpToObject(oMn_eastsecurity, 1));
			break;
	}
}