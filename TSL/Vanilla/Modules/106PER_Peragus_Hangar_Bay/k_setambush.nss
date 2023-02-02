void main() {
	if (((!GetLocalBoolean(OBJECT_SELF, 30)) && (GetGlobalNumber("103PER_Droid_Ambush") == 1))) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		object oWP_DROID_1_1 = GetObjectByTag("WP_DROID_1_1", 0);
		object oWP_DROID_1_2 = GetObjectByTag("WP_DROID_1_2", 0);
		object oWP_DROID_2_1 = GetObjectByTag("WP_DROID_2_1", 0);
		object oWP_DROID_2_2 = GetObjectByTag("WP_DROID_2_2", 0);
		location location1 = GetLocation(oWP_DROID_1_1);
		location location3 = GetLocation(oWP_DROID_1_2);
		location location5 = GetLocation(oWP_DROID_2_1);
		location location7 = GetLocation(oWP_DROID_2_2);
		CreateObject(1, "g_assassindrd006", location1, 0);
		CreateObject(1, "g_assassindrd007", location5, 0);
		object o106DROID1 = GetObjectByTag("106DROID1", 0);
		object o106DROID2 = GetObjectByTag("106DROID2", 0);
		object oPC = GetFirstPC();
		AssignCommand(o106DROID1, ClearAllActions());
		AssignCommand(oPC, ClearAllActions());
		DelayCommand(0.3, AssignCommand(o106DROID1, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
