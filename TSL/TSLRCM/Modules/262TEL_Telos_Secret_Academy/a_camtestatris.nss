void main() {
	object oAtris = GetObjectByTag("Atris", 0);
	AssignCommand(oAtris, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}