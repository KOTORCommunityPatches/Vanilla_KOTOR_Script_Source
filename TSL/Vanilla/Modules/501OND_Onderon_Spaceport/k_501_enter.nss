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
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetLoadFromSaveGame()) {
			return;
		}
		if ((!GetGlobalBoolean("501_FIRST_ENTER"))) {
			SetGlobalBoolean("501_FIRST_ENTER", 1);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
		}
		object oFake_mand;
		string string1 = "501OND_Mand_Join";
		if ((GetGlobalNumber(string1) == 0)) {
			AddAvailableNPCByTemplate(2, "p_mand");
			SetNPCSelectability(2, 0);
			SetGlobalNumber(string1, 1);
			if ((!IsNPCPartyMember(2))) {
				oFake_mand = sub1("p_mand", 0);
				AddPartyMember(2, oFake_mand);
				SetNPCSelectability(2, 0);
			}
		}
		if (((((GetGlobalNumber("502OND_End_First") == 2) && (!GetLocalBoolean(GetObjectByTag("fake_mand", 0), 50))) && GetIsObjectValid(GetFirstPC())) && GetIsObjectValid(GetObjectByTag("mand", 0)))) {
			oFake_mand = GetObjectByTag("fake_mand", 0);
			SetLocalBoolean(oFake_mand, 50, 1);
			AddJournalQuestEntry("escape_merchant", 90, 0);
			AssignCommand(oFake_mand, ActionStartConversation(GetFirstPC(), "end_mand", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

