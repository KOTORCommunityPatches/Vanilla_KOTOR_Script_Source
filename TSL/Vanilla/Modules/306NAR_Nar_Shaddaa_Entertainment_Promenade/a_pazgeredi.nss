void main() {
	object oGeredi = GetObjectByTag("geredi", 0);
	AssignCommand(oGeredi, ClearAllActions());
	AssignCommand(oGeredi, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
