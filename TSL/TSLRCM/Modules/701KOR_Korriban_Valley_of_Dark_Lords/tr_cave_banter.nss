void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 20)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 20, 1);
	object oKreia_invis = GetObjectByTag("kreia_invis", 0);
	if ((!GetIsObjectValid(oKreia_invis))) {
		return;
	}
	AssignCommand(oKreia_invis, ClearAllActions());
	AssignCommand(oKreia_invis, ActionStartConversation(GetFirstPC(), "kreia_cv", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}