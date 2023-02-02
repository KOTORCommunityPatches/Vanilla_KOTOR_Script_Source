void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 36, 1);
	if ((GetGlobalNumber("602DAN_End") == 2)) {
		AssignCommand(GetObjectByTag("dan_lead", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("dan_lead", 0), ActionStartConversation(oEntering, "merclead", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		AssignCommand(GetObjectByTag("dan_lead", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("dan_lead", 0), ActionStartConversation(oEntering, "zherron", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
