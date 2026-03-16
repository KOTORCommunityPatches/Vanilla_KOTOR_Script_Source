void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	object oModo = GetObjectByTag("Modo", 0);
	if ((!GetLocalBoolean(oModo, 50))) {
		return;
	}
	SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
	AssignCommand(oModo, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

