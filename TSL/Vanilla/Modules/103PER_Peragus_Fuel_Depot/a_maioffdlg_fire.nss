void main() {
	object oMainOff = GetObjectByTag("MainOff", 0);
	if (GetIsObjectValid(oMainOff)) {
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		AssignCommand(oMainOff, ClearAllActions());
		AssignCommand(oMainOff, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
