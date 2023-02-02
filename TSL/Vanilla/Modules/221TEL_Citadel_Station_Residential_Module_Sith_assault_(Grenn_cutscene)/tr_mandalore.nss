void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 36, 1);
	object oMand = GetObjectByTag("mand", 0);
	if (GetIsObjectValid(oMand)) {
		AssignCommand(oMand, ClearAllActions());
		AssignCommand(oMand, ActionStartConversation(GetFirstPC(), "221mand", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
