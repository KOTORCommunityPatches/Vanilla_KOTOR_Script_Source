void main() {
	object oP_kreia003 = GetObjectByTag("Kreia", 0);
	object oWp_kreia2 = GetWaypointByTag("wp_kreia2");
	if (GetIsObjectValid(oP_kreia003)) {
		DestroyObject(oP_kreia003, 0.0, 1, 0.0, 1);
	}
	oP_kreia003 = CreateObject(1, "p_kreia003", GetLocation(oWp_kreia2), 0);
	AssignCommand(oP_kreia003, ClearAllActions());
	int nParam1 = GetScriptParameter(1);
	if (nParam1) {
		SetLocalNumber(OBJECT_SELF, 12, 3);
	}
	else {
		SetLocalNumber(OBJECT_SELF, 12, 1);
	}
	AssignCommand(OBJECT_SELF, ClearAllActions());
	DelayCommand(0.5, AssignCommand(OBJECT_SELF, ActionStartConversation(GetPCSpeaker(), "650Kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	NoClicksFor(1.5);
}

