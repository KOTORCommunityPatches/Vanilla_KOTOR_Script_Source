void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (((GetGlobalNumber("300NAR_Bounty_Attack") > 0) && (GetGlobalNumber("351NAR_G0T0_Ship") == 0))) {
			SetAreaUnescapable(1);
		}
		else {
			if ((GetGlobalNumber("351NAR_G0T0_Ship") == 1)) {
				SetAreaUnescapable(0);
			}
		}
		object oGeriel = GetObjectByTag("geriel", 0);
		if (GetIsObjectValid(oGeriel)) {
			if ((GetLocalBoolean(oEntering, 60) == 0)) {
				AssignCommand(oGeriel, ActionPlayAnimation(28, 1.0, (-1.0)));
			}
		}
		if ((!GetGlobalNumber("302NAR_Entered"))) {
			SetGlobalNumber("302NAR_Refugee_Favor", 10);
		}
		SetGlobalNumber("302NAR_Entered", 1);
		if ((GetGlobalNumber("302NAR_RefugeeDespair") == 2)) {
		}
		object oOdis = GetObjectByTag("odis", 0);
		if (GetIsObjectValid(oOdis)) {
			if (((GetGlobalBoolean("300NAR_ODIS_EMPLOYEED") || (GetJournalEntry("30008") == 20)) || (GetJournalEntry("30008") == 21))) {
				SetGlobalBoolean("300NAR_ODIS_EMPLOYEED", 0);
				DestroyObject(oOdis, 0.0, 0, 0.0, 0);
			}
		}
		object oKahranna = GetObjectByTag("kahranna", 0);
		if (GetIsObjectValid(oKahranna)) {
			if ((GetJournalEntry("30002") == 20)) {
				DestroyObject(oKahranna, 0.0, 0, 0.0, 0);
			}
		}
	}
}
