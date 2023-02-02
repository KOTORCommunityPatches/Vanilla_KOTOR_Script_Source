void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oRECapt = GetObjectByTag("RECapt", 0);
		if ((!GetIsObjectValid(oRECapt))) {
			return;
		}
		AssignCommand(oRECapt, ClearAllActions());
		AssignCommand(oRECapt, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
