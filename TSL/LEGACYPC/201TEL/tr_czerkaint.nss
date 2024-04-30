void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 36))) {
		if ((GetGlobalNumber("203TEL_DroidInt_1") == 1)) {
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			CreateObject(1, "g_exlt", GetLocation(GetObjectByTag("wp_czerkaleader", 0)), 0);
			CreateObject(1, "n_czerkaguard02", GetLocation(GetObjectByTag("wp_czerkaguard02", 0)), 0);
			object oPC = GetFirstPC();
			object object10 = GetNextPC();
			object object12 = GetNextPC();
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object10, ClearAllActions());
			AssignCommand(object12, ClearAllActions());
			AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("wp_pc1", 0))));
			AssignCommand(object10, ActionJumpToLocation(GetLocation(GetObjectByTag("wp_pc2", 0))));
			AssignCommand(object12, ActionJumpToLocation(GetLocation(GetObjectByTag("wp_pc3", 0))));
			AssignCommand(GetObjectByTag("201_benok", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("201_benok", 0), ActionStartConversation(oEntering, "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

