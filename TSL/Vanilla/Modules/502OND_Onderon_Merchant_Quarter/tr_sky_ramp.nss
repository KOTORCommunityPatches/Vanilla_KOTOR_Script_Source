void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oCp_replace = GetObjectByTag("bostuco", 0);
	if ((GetLocalBoolean(OBJECT_SELF, 45) || (!GetIsObjectValid(oCp_replace)))) {
		oCp_replace = GetObjectByTag("cp_replace", 0);
	}
	AssignCommand(oCp_replace, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
