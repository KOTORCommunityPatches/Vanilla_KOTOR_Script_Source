void main() {
	object oTr_exit = GetObjectByTag("tr_exit", 0);
	AssignCommand(oTr_exit, ActionStartConversation(GetFirstPC(), "exit", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}