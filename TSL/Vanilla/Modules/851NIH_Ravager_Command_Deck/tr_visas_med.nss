void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("000_Visas_Dead") == 1)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 55, 1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(oVisasMarr, ClearAllActions());
	AssignCommand(oVisasMarr, ActionJumpToObject(GetObjectByTag("sp_visas_cell_door", 0), 1));
	AssignCommand(oVisasMarr, ActionStartConversation(GetFirstPC(), "851visdr", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
