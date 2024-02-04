void main() {
	object oAtton = GetObjectByTag("Atton", 0);
	AssignCommand(oAtton, ClearAllActions());
	AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "attpazzak", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}