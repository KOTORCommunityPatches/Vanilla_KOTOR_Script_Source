void main() {
	AssignCommand(OBJECT_SELF, ActionPlayAnimation(20, 1.0, (-1.0)));
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		if ((GetGlobalNumber("000_HK_Total_Parts") == 1)) {
			AddJournalQuestEntry("RebuildHK47", 31, 1);
		}
		if ((GetGlobalNumber("000_HK_Total_Parts") == 2)) {
			if ((GetGlobalNumber("000_HK_Chassis") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 41, 1);
			}
			if ((GetGlobalNumber("000_HK_Control_C") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 42, 1);
			}
			if ((GetGlobalNumber("000_HK_Vocab") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 40, 1);
			}
		}
		if ((GetGlobalNumber("000_HK_Total_Parts") == 3)) {
			if ((GetGlobalNumber("000_HK_Chassis") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 60, 1);
			}
			if ((GetGlobalNumber("000_HK_Control_C") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 61, 1);
			}
			if ((GetGlobalNumber("000_HK_Vocab") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 62, 1);
			}
		}
	}
	if ((nParam1 == 2)) {
		if ((GetGlobalNumber("000_HK_Total_Parts") == 1)) {
			AddJournalQuestEntry("RebuildHK47", 32, 1);
		}
		if ((GetGlobalNumber("000_HK_Total_Parts") == 2)) {
			if ((GetGlobalNumber("000_HK_Processor") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 44, 1);
			}
			if ((GetGlobalNumber("000_HK_Control_C") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 45, 1);
			}
			if ((GetGlobalNumber("000_HK_Vocab") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 43, 1);
			}
		}
		if ((GetGlobalNumber("000_HK_Total_Parts") == 3)) {
			if ((GetGlobalNumber("000_HK_Processor") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 63, 1);
			}
			if ((GetGlobalNumber("000_HK_Control_C") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 64, 1);
			}
			if ((GetGlobalNumber("000_HK_Vocab") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 65, 1);
			}
		}
	}
	if ((nParam1 == 3)) {
		if ((GetGlobalNumber("000_HK_Total_Parts") == 1)) {
			AddJournalQuestEntry("RebuildHK47", 33, 1);
		}
		if ((GetGlobalNumber("000_HK_Total_Parts") == 2)) {
			if ((GetGlobalNumber("000_HK_Processor") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 47, 1);
			}
			if ((GetGlobalNumber("000_HK_Chassis") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 46, 1);
			}
			if ((GetGlobalNumber("000_HK_Vocab") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 48, 1);
			}
		}
		if ((GetGlobalNumber("000_HK_Total_Parts") == 3)) {
			if ((GetGlobalNumber("000_HK_Processor") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 66, 1);
			}
			if ((GetGlobalNumber("000_HK_Chassis") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 67, 1);
			}
			if ((GetGlobalNumber("000_HK_Vocab") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 68, 1);
			}
		}
	}
	if ((nParam1 == 4)) {
		if ((GetGlobalNumber("000_HK_Total_Parts") == 1)) {
			AddJournalQuestEntry("RebuildHK47", 30, 1);
		}
		if ((GetGlobalNumber("000_HK_Total_Parts") == 2)) {
			if ((GetGlobalNumber("000_HK_Processor") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 50, 1);
			}
			if ((GetGlobalNumber("000_HK_Chassis") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 51, 1);
			}
			if ((GetGlobalNumber("000_HK_Control_C ") == 1)) {
				AddJournalQuestEntry("RebuildHK47", 49, 1);
			}
		}
		if ((GetGlobalNumber("000_HK_Total_Parts") == 3)) {
			if ((GetGlobalNumber("000_HK_Processor") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 69, 1);
			}
			if ((GetGlobalNumber("000_HK_Chassis") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 70, 1);
			}
			if ((GetGlobalNumber("000_HK_Control_C") == 0)) {
				AddJournalQuestEntry("RebuildHK47", 71, 1);
			}
		}
	}
}

