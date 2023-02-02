void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			CreateItemOnObject("pl_khoonda_key", GetFirstPC(), 1, 0);
			if (((GetJournalEntry("chguard") > 0) && (GetJournalEntry("chguard") < 89))) {
				AddJournalQuestEntry("chguard", 92, 0);
			}
			break;
		case 1:
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionForceMoveToObject(GetObjectByTag("wp_kh_pc2", 0), 0, 1.0, 30.0));
			break;
	}
}
