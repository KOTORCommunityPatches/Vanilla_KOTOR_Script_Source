void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetEnteringObject() == GetPartyLeader())) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oRefugee2 = GetObjectByTag("Refugee2", 0);
		if ((!GetIsObjectValid(oRefugee2))) {
			return;
		}
		AssignCommand(oRefugee2, ClearAllActions());
		AssignCommand(oRefugee2, ActionStartConversation(GetFirstPC(), "RefEnc", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
