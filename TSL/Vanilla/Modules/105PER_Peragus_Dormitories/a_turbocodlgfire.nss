void main() {
	object oTurboConsole = GetObjectByTag("TurboConsole", 0);
	if (GetIsObjectValid(oTurboConsole)) {
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		AssignCommand(oTurboConsole, ClearAllActions());
		AssignCommand(oTurboConsole, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

