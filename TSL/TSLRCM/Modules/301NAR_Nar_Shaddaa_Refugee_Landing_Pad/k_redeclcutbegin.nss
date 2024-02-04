void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if (("atton" == GetTag(oEntering))) {
			if (((GetGlobalNumber("300NAR_Bounty_Attack") == 1) || (GetGlobalNumber("300NAR_Bounty_Attack") == 2))) {
			}
		}
		else {
			if ((GetLocalBoolean(OBJECT_SELF, 30) || (!GetGlobalNumber("302NAR_Entered")))) {
				return;
			}
			if ((GetGlobalNumber("300_zbyl_refix") != 0)) {
				return;
			}
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			object oWP_QUELLO_RE_1 = GetObjectByTag("WP_QUELLO_RE_1", 0);
			CreateObject(1, "n_twilekm003", GetLocation(oWP_QUELLO_RE_1), 0);
			object oQuello = GetObjectByTag("Quello", 0);
			if ((!GetIsObjectValid(oQuello))) {
				AurPostString("301NAR Error! No Quello", 5, 15, 10.0);
				return;
			}
			AddJournalQuestEntry("LandingRights", 15, 0);
			SetGlobalNumber("300_zbyl_refix", 1);
			DelayCommand(0.5, AssignCommand(oQuello, ClearAllActions()));
			DelayCommand(0.5, AssignCommand(oQuello, ActionStartConversation(GetFirstPC(), "RECutArr", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
}