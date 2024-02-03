void main() {
	int int1 = 0;
	while ((int1 < 12)) {
		if (IsNPCPartyMember(int1)) {
			RemovePartyMember(int1);
		}
		(++int1);
	}
	object oP_kreia003 = GetObjectByTag("Kreia", 0);
	object oWP_KREIA_JEDI_0 = GetWaypointByTag("WP_KREIA_JEDI_0");
	if (GetIsObjectValid(oP_kreia003)) {
		DestroyObject(oP_kreia003, 0.0, 1, 0.0, 1);
		EnableRendering(oP_kreia003, 0);
	}
	oP_kreia003 = CreateObject(1, "p_kreia003", GetLocation(oWP_KREIA_JEDI_0), 0);
	SetGlobalNumber("650DAN_Revelation", 1);
	SetLocalBoolean(oP_kreia003, 30, 1);
	SetLockOrientationInDialog(oP_kreia003, 1);
	AssignCommand(oP_kreia003, ClearAllActions());
	AssignCommand(oP_kreia003, ActionStartConversation(GetFirstPC(), "krealone", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

