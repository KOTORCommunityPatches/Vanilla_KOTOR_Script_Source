void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPartyLeader(oEntering)) {
		AurPostString("Entering...", 5, 5, 5.0);
		AssignCommand(oEntering, ClearAllActions());
		AssignCommand(OBJECT_SELF, ActionStartConversation(oEntering, "exit", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
