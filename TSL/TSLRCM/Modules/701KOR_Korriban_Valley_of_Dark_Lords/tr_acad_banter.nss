void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalNumber(OBJECT_SELF, 20)) {
		return;
	}
	SetLocalNumber(OBJECT_SELF, 20, 1);
	object oKreia_invis = GetObjectByTag("kreia_invis", 0);
	if ((!GetIsObjectValid(oKreia_invis))) {
		return;
	}
	AssignCommand(oKreia_invis, ClearAllActions());
	AurPostString("starting conversation", 5, 15, 5.0);
	AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "kreia_ac", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}