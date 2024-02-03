void main() {
	object oVisquis = GetObjectByTag("Visquis", 0);
	AssignCommand(oVisquis, ClearAllActions());
	AssignCommand(oVisquis, ActionStartConversation(GetFirstPC(), "305miratry", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

