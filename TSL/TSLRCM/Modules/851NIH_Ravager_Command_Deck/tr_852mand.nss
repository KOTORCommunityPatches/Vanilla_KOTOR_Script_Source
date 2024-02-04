void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	if ((GetGlobalNumber("000_Visas_Dead") == 1)) {
		return;
	}
	if ((GetGlobalNumber("852NIH_Nihilus_Dead") == 0)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
	AssignCommand(oVisasMarr, ClearAllActions());
	AssignCommand(oVisasMarr, ActionMoveToObject(GetObjectByTag("WP_852MAND_VISAS", 0), 0, 1.0));
	AssignCommand(oVisasMarr, ActionStartConversation(GetFirstPC(), "852Mand", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}