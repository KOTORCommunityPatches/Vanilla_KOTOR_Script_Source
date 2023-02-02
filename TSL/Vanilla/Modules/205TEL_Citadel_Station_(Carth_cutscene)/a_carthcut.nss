void main() {
	object oCarth = GetObjectByTag("Carth", 0);
	AssignCommand(oCarth, ClearAllActions());
	AssignCommand(oCarth, ActionStartConversation(GetFirstPC(), "carthend", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
