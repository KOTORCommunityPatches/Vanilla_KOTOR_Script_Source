void main() {
	object oTr_kreia_crystal = GetObjectByTag("tr_kreia_crystal", 0);
	if ((GetLocalBoolean(oTr_kreia_crystal, 50) && (GetJournalEntry("cavecrawl") == 0))) {
		SetLocalBoolean(oTr_kreia_crystal, 50, 0);
	}
}

