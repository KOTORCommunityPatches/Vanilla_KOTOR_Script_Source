void main() {
	object oSecTer = GetObjectByTag("SecTer", 0);
	if (GetIsObjectValid(oSecTer)) {
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		AssignCommand(oSecTer, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
