void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetGlobalNumber("502OND_End_First") != 2)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oOnd_soldier_ster = GetObjectByTag("ond_soldier_ster", 0);
	SetLocalBoolean(oOnd_soldier_ster, 49, 1);
	DelayCommand(0.1, AssignCommand(oOnd_soldier_ster, ActionStartConversation(oEntering, "term_so", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

