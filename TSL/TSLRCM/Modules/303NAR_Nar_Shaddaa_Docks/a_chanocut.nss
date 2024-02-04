void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		object oChano = GetObjectByTag("chano", 0);
		if (GetIsObjectValid(oChano)) {
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			SetLocalBoolean(oChano, 30, 1);
			AssignCommand(oChano, ClearAllActions());
			AssignCommand(oChano, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}