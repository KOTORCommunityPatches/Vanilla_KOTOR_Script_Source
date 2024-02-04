void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	object oKiller_droid = GetObjectByTag("killer_droid", 0);
	if (GetIsObjectValid(oKiller_droid)) {
		return;
	}
	else {
		SetGlobalNumber("303NAR_Goto_Bith", 1);
	}
	IncrementGlobalNumber("000_Goto_Crimes", 1);
	AddJournalQuestEntry("bithstd", 90, 1);
	SetLocalBoolean(OBJECT_SELF, 30, 1);
}