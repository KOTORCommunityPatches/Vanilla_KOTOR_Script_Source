void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (((GetGlobalNumber("502OND_End_First") == 2) && (!GetLocalBoolean(OBJECT_SELF, 41)))) {
		SetLocalBoolean(OBJECT_SELF, 41, 1);
		object oOnd_soldier_ster = GetObjectByTag("ond_soldier_ster", 0);
		SetLocalBoolean(oOnd_soldier_ster, 48, 1);
		AssignCommand(oOnd_soldier_ster, ActionStartConversation(oEntering, "term_so", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	object oGelesi = GetObjectByTag("gelesi", 0);
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	AssignCommand(oGelesi, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
