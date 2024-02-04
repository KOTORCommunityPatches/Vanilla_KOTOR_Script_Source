void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((GetPartyLeader() != oEntering)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oSalvage = GetObjectByTag("Salvage", 0);
	AssignCommand(oSalvage, ClearAllActions());
	AssignCommand(oSalvage, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}