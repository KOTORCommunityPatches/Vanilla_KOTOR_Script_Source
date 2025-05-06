void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if ((!GetGlobalBoolean("301NAR_MIRA_SPAWN"))) {
			if (((GetNPCSelectability(7) == (-1)) && (GetGlobalNumber("303NAR_Hanharr_Side") == 0))) {
				object oRefugee = GetObjectByTag("refugee", 0);
				if ((!GetIsObjectValid(oRefugee))) {
					return;
				}
				if ((GetLocalBoolean(oRefugee, 30) || GetLocalBoolean(oRefugee, 31))) {
					if ((!GetLocalBoolean(oRefugee, 29))) {
						SetLocalBoolean(oRefugee, 29, 1);
						AurPostString("About to create mira.", 5, 15, 10.0);
						object oP_mira = CreateObject(1, "p_mira", GetLocation(GetObjectByTag("WP_mira_spawn", 0)), 0);
						AurPostString("About to start conversation.", 5, 16, 10.0);
						DelayCommand(0.1, AssignCommand(oP_mira, ActionStartConversation(GetObjectByTag("refugee", 0), "ref_mira", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
					}
				}
			}
		}
	}
}

