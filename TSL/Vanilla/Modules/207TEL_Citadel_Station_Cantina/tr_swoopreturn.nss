void main() {
	if ((GetFirstPC() != GetEnteringObject())) {
		return;
	}
	object oSwoopMC = GetObjectByTag("SwoopMC", 0);
	if ((!GetLocalBoolean(oSwoopMC, 50))) {
		return;
	}
	if (GetLocalBoolean(oSwoopMC, 51)) {
		SetLocalBoolean(oSwoopMC, 51, 0);
		SetLocalBoolean(oSwoopMC, 50, 0);
		return;
	}
	SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
	AssignCommand(oSwoopMC, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
