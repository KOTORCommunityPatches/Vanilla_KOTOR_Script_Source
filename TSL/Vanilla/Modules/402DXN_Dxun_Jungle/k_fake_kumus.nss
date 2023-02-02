void main() {
	object oPC = GetFirstPC();
	object oKumus = GetObjectByTag("kumus", 0);
	AssignCommand(oKumus, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
