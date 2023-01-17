void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oRatrin = GetObjectByTag("Ratrin", 0);
		if ((!GetIsObjectValid(oRatrin))) {
			return;
		}
		AssignCommand(oRatrin, ClearAllActions());
		AssignCommand(oRatrin, ActionStartConversation(GetFirstPC(), "Ratrin", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

