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
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oTo_504 = GetObjectByTag("To_504", 0);
	if (((!GetLocalBoolean(oTo_504, 38)) && GetIsObjectValid(oTo_504))) {
		if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
			SetLocalBoolean(oTo_504, 41, 1);
			sub1("roy_soldier", 1);
			sub1("roy_soldier", 2);
			sub1("roy_soldier", 3);
			sub1("roy_soldier", 4);
			sub1("roy_soldier", 5);
			sub1("roy_soldier001", 1);
			sub1("roy_soldier001", 2);
			sub1("roy_soldier001", 3);
			sub1("roy_soldier001", 4);
			sub1("roy_soldier001", 5);
			sub1("vak_soldier001", 1);
			sub1("vak_soldier001", 2);
			sub1("vak_soldier001", 3);
			sub1("vak_soldier_m001", 1);
			sub1("vak_soldier_m001", 2);
			sub1("vak_soldier_m001", 3);
			sub1("ond_soldier_n001", 0);
		}
		else {
			SetLocalBoolean(oTo_504, 40, 1);
			SetLocalBoolean(oTo_504, 50, 1);
			sub1("vak_soldier", 1);
			sub1("vak_soldier", 2);
			sub1("vak_soldier", 3);
			sub1("vak_soldier", 4);
			sub1("vak_soldier", 5);
			sub1("vak_soldier_mele", 1);
			sub1("vak_soldier_mele", 2);
			sub1("vak_soldier_mele", 3);
			sub1("vak_soldier_mele", 4);
			sub1("vak_soldier_mele", 5);
			sub1("vak_soldier_mele", 6);
			sub1("ond_soldier_nter", 0);
		}
		SetLocalBoolean(oTo_504, 38, 1);
	}
	object oOnd_soldier_nter = GetObjectByTag("ond_soldier_nter", 0);
	if ((GetIsObjectValid(oOnd_soldier_nter) && GetIsObjectValid(GetFirstPC()))) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetGlobalFadeIn(3.0, 1.0, 0.0, 0.0, 0.0);
		SetLocalBoolean(oTo_504, 50, 0);
		AssignCommand(oOnd_soldier_nter, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
