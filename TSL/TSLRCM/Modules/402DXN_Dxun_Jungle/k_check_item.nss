void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oTo_401 = GetObjectByTag("To_401", 0);
		if (((!GetLocalBoolean(oTo_401, 50)) && GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "PhasePulseConverterAssembly")))) {
			SetLocalBoolean(oTo_401, 50, 1);
			int nGlobal = GetGlobalNumber("402DXN_PPC_Count");
			SetGlobalNumber("402DXN_PPC_Count", (nGlobal + 1));
			AddJournalQuestEntry("tcannoks", ((nGlobal + 2) * 10), 0);
		}
		if (((!GetLocalBoolean(oTo_401, 51)) && GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "PhasePulseConverterCore")))) {
			SetLocalBoolean(oTo_401, 51, 1);
			int int7 = GetGlobalNumber("402DXN_PPC_Count");
			SetGlobalNumber("402DXN_PPC_Count", (int7 + 1));
			AddJournalQuestEntry("tcannoks", ((int7 + 2) * 10), 0);
		}
		if (((!GetLocalBoolean(oTo_401, 52)) && GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "PhasePulseConverterPS")))) {
			SetLocalBoolean(oTo_401, 52, 1);
			int int11 = GetGlobalNumber("402DXN_PPC_Count");
			SetGlobalNumber("402DXN_PPC_Count", (int11 + 1));
			AddJournalQuestEntry("tcannoks", ((int11 + 2) * 10), 0);
		}
		if (((!GetLocalBoolean(oTo_401, 53)) && GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "zakkeg_ear")))) {
			SetLocalBoolean(oTo_401, 53, 1);
			AddJournalQuestEntry("zchallenge", 30, 0);
		}
	}
}