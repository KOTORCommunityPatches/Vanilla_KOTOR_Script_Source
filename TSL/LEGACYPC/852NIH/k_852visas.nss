void main() {
	object oEntering = GetEnteringObject();
	if ((GetPartyLeader() == oEntering)) {
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object o852Visas = GetObjectByTag("852Visas", 0);
		if (GetIsObjectValid(o852Visas)) {
			AssignCommand(o852Visas, ClearAllActions());
			AssignCommand(o852Visas, ActionStartConversation(GetFirstPC(), "852Visas", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

