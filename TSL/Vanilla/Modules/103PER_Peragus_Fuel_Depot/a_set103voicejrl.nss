void main() {
	if ((((GetGlobalNumber("103PER_Voice_Frag_1") == 1) && (GetGlobalNumber("103PER_Voice_Frag_2") == 1)) && (GetGlobalNumber("103PER_Voice_Frag_3") == 1))) {
		AddJournalQuestEntry("VoiceprintProtocol", 50, 0);
	}
	else {
		if ((((GetGlobalNumber("103PER_Voice_Frag_1") == 0) && (GetGlobalNumber("103PER_Voice_Frag_2") == 1)) && (GetGlobalNumber("103PER_Voice_Frag_3") == 1))) {
			AddJournalQuestEntry("VoiceprintProtocol", 40, 0);
		}
		else {
			if ((((GetGlobalNumber("103PER_Voice_Frag_1") == 1) && (GetGlobalNumber("103PER_Voice_Frag_2") == 0)) && (GetGlobalNumber("103PER_Voice_Frag_3") == 1))) {
				AddJournalQuestEntry("VoiceprintProtocol", 40, 0);
			}
			else {
				if ((((GetGlobalNumber("103PER_Voice_Frag_1") == 1) && (GetGlobalNumber("103PER_Voice_Frag_2") == 1)) && (GetGlobalNumber("103PER_Voice_Frag_3") == 0))) {
					AddJournalQuestEntry("VoiceprintProtocol", 40, 0);
				}
				else {
					AddJournalQuestEntry("VoiceprintProtocol", 30, 0);
				}
			}
		}
	}
}
