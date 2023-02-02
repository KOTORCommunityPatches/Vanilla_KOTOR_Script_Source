void main() {
	object oMinCon = GetObjectByTag("MinCon", 0);
	if (GetIsObjectValid(oMinCon)) {
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		AssignCommand(oMinCon, ClearAllActions());
		AssignCommand(oMinCon, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
