void main() {
	object oDroCon = GetObjectByTag("DroCon", 0);
	if (GetIsObjectValid(oDroCon)) {
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		AssignCommand(oDroCon, ClearAllActions());
		AssignCommand(oDroCon, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
