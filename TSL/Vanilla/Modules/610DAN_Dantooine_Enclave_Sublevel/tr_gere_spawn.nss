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
	if (GetLocalBoolean(GetObjectByTag("tr_gere_talk", 0), 30)) {
		return;
	}
	SetLocalBoolean(GetObjectByTag("tr_gere_talk", 0), 30, 1);
	AurPostString("Spawning Gerevick", 5, 5, 5.0);
	sub1("npc_gerevick", 0);
	sub1("npc_goon", 0);
	sub1("npc_goon", 1);
	sub1("npc_goon", 2);
	sub1("npc_goon", 3);
}

