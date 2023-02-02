void main() {
	if (((GetGlobalNumber("302NAR_AttonTwilek") == 1) && (GetEnteringObject() == GetFirstPC()))) {
		object oTwilekAtton01 = GetObjectByTag("TwilekAtton01", 0);
		AssignCommand(oTwilekAtton01, ClearAllActions());
		AssignCommand(oTwilekAtton01, ActionStartConversation(GetFirstPC(), "attontwi", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	if ((((GetLocalBoolean(GetObjectByTag("attontwilek2", 0), 25) && (!GetLocalBoolean(OBJECT_SELF, 26))) && (GetGlobalNumber("302NAR_AttonTwilek") == 0)) && (GetEnteringObject() == GetFirstPC()))) {
		SetLocalBoolean(OBJECT_SELF, 26, 1);
		CreateObject(1, "n_twilekf001", GetLocation(GetObjectByTag("wp_attontwilek1a", 0)), 0);
		CreateObject(1, "n_twilekf002", GetLocation(GetObjectByTag("wp_attontwilek2a", 0)), 0);
		object object13 = GetObjectByTag("TwilekAtton01", 0);
		object oTwilekAtton02 = GetObjectByTag("TwilekAtton02", 0);
		AssignCommand(object13, ActionStartConversation(OBJECT_SELF, "attontwi", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}
