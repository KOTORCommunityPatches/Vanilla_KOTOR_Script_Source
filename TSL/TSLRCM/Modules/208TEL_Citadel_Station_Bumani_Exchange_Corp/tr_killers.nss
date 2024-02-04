void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPC(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("203TEL_BH_CS") == 2)) {
		if (GetLocalBoolean(OBJECT_SELF, 36)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		SetGlobalNumber("203TEL_BH_CS", 3);
		SetGlobalNumber("202TEL_Bounty_Killers", 2);
		object oMerc_leader = GetObjectByTag("merc_leader", 0);
		AssignCommand(oMerc_leader, ClearAllActions());
		AssignCommand(oMerc_leader, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}