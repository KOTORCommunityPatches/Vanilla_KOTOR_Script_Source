void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
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
	DelayCommand(0.3, AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "kreia_kr", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

