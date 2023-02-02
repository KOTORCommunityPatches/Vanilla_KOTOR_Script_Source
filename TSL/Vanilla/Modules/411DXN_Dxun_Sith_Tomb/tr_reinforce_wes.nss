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
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	sub1("demo_grenade", 0);
	sub1("g_sithtroop003", 0);
	sub1("g_sithtroop003", 1);
	sub1("g_sithtroop003", 2);
	sub1("g_darkjedi01_e3", 0);
	sub1("c_boma2", 0);
	sub1("c_boma2", 1);
	DestroyObject(GetObjectByTag("tdroid", 0), 0.0, 0, 0.0, 0);
}
