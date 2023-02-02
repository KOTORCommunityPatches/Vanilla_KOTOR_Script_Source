void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oKreia_invis = GetObjectByTag("kreia_invis", 0);
	if ((!GetIsObjectValid(oKreia_invis))) {
		return;
	}
	if (((GetLocalNumber(oKreia_invis, 25) > 0) || (GetLocalNumber(oKreia_invis, 18) > 0))) {
		return;
	}
	SetLocalNumber(oKreia_invis, 25, 1);
	AssignCommand(oKreia_invis, ClearAllActions());
	AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "kreia_kr", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
