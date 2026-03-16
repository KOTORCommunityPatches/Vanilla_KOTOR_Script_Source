void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPC(oEntering))) {
		return;
	}
	if ((!GetGlobalBoolean("701_FIRST_ENTER"))) {
		SetGlobalBoolean("701_FIRST_ENTER", 1);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
	}
	object oKreia_invis = GetObjectByTag("kreia_invis", 0);
	if ((!GetIsObjectValid(oKreia_invis))) {
		return;
	}
	if ((GetLocalNumber(oKreia_invis, 20) > 0)) {
		return;
	}
	SetLocalNumber(oKreia_invis, 20, 1);
	ClearAllActions();
	SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0);
	AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "kreia_kr", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

