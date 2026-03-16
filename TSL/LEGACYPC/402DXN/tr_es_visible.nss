void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (((GetGlobalNumber("502OND_End_First") == 2) || (GetGlobalNumber("403DXN_Second_Visit") == 1))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 50)) {
		return;
	}
	AddJournalQuestEntry("explosivesit", 20, 0);
	SetLocalBoolean(OBJECT_SELF, 50, 1);
}

