void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	AssignCommand(oEntering, ClearAllActions());
	AssignCommand(OBJECT_SELF, ActionStartConversation(oEntering, "sorry", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}