// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	object oTr_kreia_crystal = GetObjectByTag("tr_kreia_crystal", 0);
	object oKinrath_hatch;
	int int1;
	if (((!GetLocalBoolean(oTr_kreia_crystal, 42)) || ((GetJournalEntry("cavecrawl") == 10) && (!GetLocalBoolean(oTr_kreia_crystal, 43))))) {
		SetLocalBoolean(oTr_kreia_crystal, 42, 1);
		int1 = 0;
		while ((int1 <= 8)) {
			oKinrath_hatch = GetObjectByTag("kinrath_hatch", int1);
			if ((!GetIsObjectValid(oKinrath_hatch))) {
				sub1("kinrath_hatch", int1);
			}
			(int1++);
		}
		if (((GetJournalEntry("cavecrawl") == 10) && (!GetLocalBoolean(oTr_kreia_crystal, 43)))) {
			SetLocalBoolean(oTr_kreia_crystal, 43, 1);
			sub1("g_kinrath_mom", 0);
			DelayCommand(0.5, AssignCommand(oTr_kreia_crystal, ActionStartConversation(GetFirstPC(), "brood", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
		else {
			if (((!GetLocalBoolean(oTr_kreia_crystal, 44)) && (GetJournalEntry("cavecrawl") != 10))) {
				SetLocalBoolean(oTr_kreia_crystal, 44, 1);
				DelayCommand(0.5, AssignCommand(oTr_kreia_crystal, ActionStartConversation(GetFirstPC(), "brood", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
			else {
				int1 = 0;
				while ((int1 <= 8)) {
					oKinrath_hatch = GetObjectByTag("kinrath_hatch", int1);
					if (GetIsObjectValid(oKinrath_hatch)) {
						ChangeToStandardFaction(oKinrath_hatch, 1);
					}
					(int1++);
				}
			}
		}
	}
}