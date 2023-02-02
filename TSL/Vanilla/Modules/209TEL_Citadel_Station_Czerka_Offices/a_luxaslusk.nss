void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		CreateObject(1, "n_203_luxa", GetLocation(GetObjectByTag("WP_LUXA", 0)), 0);
		CreateObject(1, "g_gamlux001", GetLocation(GetObjectByTag("WP_GAML1", 0)), 0);
		CreateObject(1, "g_gamlux001", GetLocation(GetObjectByTag("WP_GAML3", 0)), 0);
		CreateObject(1, "g_gamluxb002", GetLocation(GetObjectByTag("WP_GAML2", 0)), 0);
		object oDoor_203exb = GetObjectByTag("door_203exb", 0);
		AssignCommand(oDoor_203exb, ActionCloseDoor(oDoor_203exb));
		DelayCommand(0.5, AssignCommand(oDoor_203exb, ActionLockObject(oDoor_203exb)));
	}
	else {
		if ((nParam1 == 2)) {
			object oHidden_turret = GetObjectByTag("hidden_turret", 0);
			object object13 = GetObjectByTag("hidden_turret", 1);
			DelayCommand(0.1, AssignCommand(oHidden_turret, ActionPlayAnimation(122, 1.0, 0.0)));
			DelayCommand(0.1, AssignCommand(object13, ActionPlayAnimation(122, 1.0, 0.0)));
		}
		else {
			if ((nParam1 == 3)) {
				SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
				SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
				SetPartyLeader(0xFFFFFFFF);
				object oPC = GetFirstPC();
				object object17 = GetNextPC();
				object object19 = GetNextPC();
				DelayCommand(0.5, AssignCommand(oPC, ClearAllActions()));
				DelayCommand(0.5, AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_pc_1", 0)))));
				DelayCommand(1.0, AssignCommand(oPC, ClearAllActions()));
				DelayCommand(1.0, AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_sluskdesk", 0)), 0, 30.0)));
				if (GetIsObjectValid(object17)) {
					DelayCommand(0.5, AssignCommand(object17, ClearAllActions()));
					DelayCommand(0.5, AssignCommand(object17, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_pc_2", 0)))));
					DelayCommand(1.0, AssignCommand(object17, ClearAllActions()));
					DelayCommand(1.0, AssignCommand(object17, ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_sluskdesk2", 0)), 0, 30.0)));
				}
				if (GetIsObjectValid(object19)) {
					DelayCommand(0.5, AssignCommand(object19, ClearAllActions()));
					DelayCommand(0.5, AssignCommand(object19, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_pc_3", 0)))));
					DelayCommand(1.0, AssignCommand(object19, ClearAllActions()));
					DelayCommand(1.0, AssignCommand(object19, ActionForceMoveToLocation(GetLocation(GetObjectByTag("wp_sluskdesk3", 0)), 0, 30.0)));
				}
			}
		}
	}
}
