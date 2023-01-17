void main() {
	int nParam1 = GetScriptParameter(1);
	object oG_mandalore;
	object oWp_mandalore_guide4;
	switch (nParam1) {
		case 0:
			oG_mandalore = GetFirstPC();
			oWp_mandalore_guide4 = GetObjectByTag("WP_MEETMANDALORE2", 0);
			AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mandalore_guide4, 0, 1.0));
			oWp_mandalore_guide4 = GetObjectByTag("wp_mandalore_guide1", 0);
			oG_mandalore = CreateObject(1, "g_mand_guide", GetLocation(oWp_mandalore_guide4), 0);
			oWp_mandalore_guide4 = GetObjectByTag("wp_mandalore_guide2", 0);
			AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mandalore_guide4, 0, 1.0));
			break;
		case 1:
			oG_mandalore = GetFirstPC();
			oWp_mandalore_guide4 = GetObjectByTag("WP_MEETMANDALORE2", 0);
			AssignCommand(oG_mandalore, ClearAllActions());
			AssignCommand(oG_mandalore, ActionJumpToObject(oWp_mandalore_guide4, 1));
			oWp_mandalore_guide4 = GetObjectByTag("WP_MEETMANDALORE3", 0);
			AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mandalore_guide4, 0, 1.0));
			oG_mandalore = GetObjectByTag("g_mand_guide", 0);
			oWp_mandalore_guide4 = GetObjectByTag("wp_mandalore_guide2", 0);
			AssignCommand(oG_mandalore, ClearAllActions());
			AssignCommand(oG_mandalore, ActionJumpToObject(oWp_mandalore_guide4, 1));
			oWp_mandalore_guide4 = GetObjectByTag("wp_mandalore_guide3", 0);
			AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mandalore_guide4, 0, 1.0));
			break;
		case 2:
			oG_mandalore = GetFirstPC();
			oWp_mandalore_guide4 = GetObjectByTag("WP_MEETMANDALORE3", 0);
			AssignCommand(oG_mandalore, ClearAllActions());
			AssignCommand(oG_mandalore, ActionJumpToObject(oWp_mandalore_guide4, 1));
			oG_mandalore = GetObjectByTag("g_mand_guide", 0);
			oWp_mandalore_guide4 = GetObjectByTag("wp_mandalore_guide3", 0);
			AssignCommand(oG_mandalore, ClearAllActions());
			AssignCommand(oG_mandalore, ActionJumpToObject(oWp_mandalore_guide4, 1));
			oG_mandalore = GetFirstPC();
			oWp_mandalore_guide4 = GetObjectByTag("WP_MEETMANDALORE4", 0);
			AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mandalore_guide4, 0, 1.0));
			oG_mandalore = GetObjectByTag("g_mand_guide", 0);
			oWp_mandalore_guide4 = GetObjectByTag("wp_mandalore_guide4", 0);
			AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mandalore_guide4, 0, 1.0));
			oWp_mandalore_guide4 = GetObjectByTag("wp_mandalore_guide3", 0);
			AssignCommand(oG_mandalore, ActionWait(1.0));
			AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mandalore_guide4, 0, 1.0));
			oG_mandalore = GetObjectByTag("g_mandalore", 0);
			DelayCommand(2.0, AssignCommand(oG_mandalore, ActionPlayAnimation(15, 1.0, 1.0)));
			break;
		case 3:
			oG_mandalore = GetObjectByTag("g_mandalore", 0);
			DelayCommand(2.0, AssignCommand(oG_mandalore, ActionDoCommand(SetFacing(90.0))));
			SetGlobalNumber("403DXN_Camp_Visited", 1);
			break;
	}
}

