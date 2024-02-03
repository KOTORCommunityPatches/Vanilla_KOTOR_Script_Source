void main() {
	object oHangarter = GetObjectByTag("Hangarter", 0);
	if (GetIsObjectValid(oHangarter)) {
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		AssignCommand(oHangarter, ClearAllActions());
		AssignCommand(oHangarter, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

