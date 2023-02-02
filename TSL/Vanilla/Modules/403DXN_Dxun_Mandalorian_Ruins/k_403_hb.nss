void main() {
	object oAreaObject = GetFirstObjectInArea(GetArea(GetFirstPC()), 1);
	if (((GetGlobalNumber("403DXN_Sith_Attack") >= 1) && (GetGlobalNumber("403DXN_Sith_Attack") <= 4))) {
		if (GetLocalBoolean(GetObjectByTag("To_402", 0), 52)) {
			object oWp_sith_mand;
			object object7 = GetFirstObjectInArea(GetArea(GetFirstPC()), 1);
			int int4 = 0;
			while (GetIsObjectValid(object7)) {
				if ((GetTag(object7) == "sith_ass_403")) {
					(int4++);
				}
				object7 = GetNextObjectInArea(GetArea(GetFirstPC()), 1);
			}
			if ((int4 == 0)) {
				object oG_mandalore = GetObjectByTag("g_mandalore", 0);
				SetGlobalNumber("403DXN_Sith_Attack", 5);
				DelayCommand(2.0, CancelCombat(GetFirstPC()));
				DelayCommand(2.0, SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0));
				DelayCommand(2.0, SetGlobalFadeIn(1.5, 0.0, 0.0, 0.0, 0.0));
				object oSecurity_door = GetObjectByTag("security_door", 0);
				DelayCommand(2.0, AssignCommand(oSecurity_door, ActionUnlockObject(oSecurity_door)));
				DelayCommand(2.0, AssignCommand(oSecurity_door, ActionOpenDoor(oSecurity_door)));
				oWp_sith_mand = GetObjectByTag("wp_sith_pc2", 0);
				DelayCommand(2.1, AssignCommand(GetFirstPC(), ActionJumpToObject(oWp_sith_mand, 1)));
				oWp_sith_mand = GetObjectByTag("wp_sith_mand", 0);
				DelayCommand(2.1, AssignCommand(oG_mandalore, ActionJumpToObject(oWp_sith_mand, 1)));
				DelayCommand(2.2, AssignCommand(oG_mandalore, ActionStartConversation(GetFirstPC(), "sith_att", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}
