void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	object oAtton = GetObjectByTag("Atton", 0);
	if ((!GetLocalBoolean(OBJECT_SELF, 30))) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(oAtton, ClearAllActions());
		AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "103Atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

