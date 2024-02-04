// Prototypes
void sub1();

void sub1() {
	SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
	object oN_hk50_020 = CreateObject(1, "n_hk50_020", GetLocation(GetObjectByTag("sp_hk_final_1", 0)), 0);
	CreateObject(1, "n_hk50_021", GetLocation(GetObjectByTag("sp_hk_final_0", 0)), 0);
	CreateObject(1, "n_hk50_022", GetLocation(GetObjectByTag("sp_hk_final_2", 0)), 0);
	AssignCommand(oN_hk50_020, ActionStartConversation(GetFirstPC(), "hk50cut", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	DestroyObject(GetObjectByTag("HK50faceend", 0), 0.0, 0, 0.0, 0);
	SetGlobalNumber("299TEL_HK50", 4);
	AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(oN_hk50_020)));
}

void main() {
	if ((!GetLocalBoolean(GetObjectByTag("sec_terminal50", 0), 36))) {
		SetGlobalNumber("299TEL_HK50_Core", 0);
	}
	if ((GetLocalBoolean(GetObjectByTag("sec_terminal50", 0), 39) && (GetGlobalNumber("299TEL_HK50") != 4))) {
		SetGlobalNumber("299TEL_HK50", 3);
		AddJournalQuestEntry("telosfactory", 69, 0);
		if ((GetGlobalNumber("299TEL_HK51_Active") != 0)) {
			if ((GetGlobalNumber("299TEL_HK51") == 4)) {
				AddJournalQuestEntry("telosfactory", 80, 0);
			}
			if ((GetGlobalNumber("299TEL_HK51") != 4)) {
				AddJournalQuestEntry("telosfactory", 70, 0);
			}
			if ((GetGlobalNumber("299TEL_HK51_Core") == 1)) {
				AddJournalQuestEntry("telosfactory", 72, 0);
			}
		}
	}
	if ((GetGlobalNumber("299TEL_HK50") == 3)) {
		sub1();
	}
}