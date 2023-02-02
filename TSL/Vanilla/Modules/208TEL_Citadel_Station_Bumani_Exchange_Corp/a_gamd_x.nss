void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetLocked(GetObjectByTag("door_203exb", 0), 0);
		DelayCommand(1.5, AssignCommand(GetObjectByTag("door_203exb", 0), ActionOpenDoor(GetObjectByTag("door_203exb", 0))));
		DelayCommand(0.3, AssignCommand(GetObjectByTag("GamGuardLux", 3), ActionMoveToObject(GetWaypointByTag("WP_GAML4"), 1, 1.0)));
		DelayCommand(0.2, AssignCommand(GetObjectByTag("GamGuardLux", 4), ActionMoveToObject(GetWaypointByTag("WP_GAML6"), 1, 1.0)));
		DelayCommand(0.1, AssignCommand(GetObjectByTag("GamGuardLuxDoor", 0), ActionMoveToObject(GetWaypointByTag("WP_boss_run"), 1, 1.0)));
		object o203_Slusk = GetObjectByTag("203_Slusk", 0);
		if (GetIsObjectValid(o203_Slusk)) {
			AssignCommand(o203_Slusk, ClearAllActions());
			object oWP_SLUSK1 = GetObjectByTag("WP_SLUSK1", 0);
			if (GetIsObjectValid(oWP_SLUSK1)) {
				AssignCommand(o203_Slusk, ActionJumpToLocation(GetLocation(oWP_SLUSK1)));
			}
			else {
				AurPostString("Invalid WAYPOINT", 5, 15, 10.0);
			}
		}
		else {
			AurPostString("Invalid Slusk", 5, 15, 10.0);
		}
	}
	else {
		if ((nParam1 == 2)) {
			object oDrdBdyGrd = GetObjectByTag("DrdBdyGrd", 0);
			object object16 = GetObjectByTag("DrdBdyGrd", 1);
			AssignCommand(oDrdBdyGrd, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_DBG1", 0)), 1));
			AssignCommand(object16, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_DBG2", 0)), 1));
			SetCreatureAILevel(oDrdBdyGrd, 3);
			SetCreatureAILevel(object16, 3);
			DelayCommand(2.0, AssignCommand(oDrdBdyGrd, ClearAllActions()));
			DelayCommand(2.0, AssignCommand(object16, ClearAllActions()));
			DelayCommand(2.1, ChangeToStandardFaction(oDrdBdyGrd, 1));
			DelayCommand(2.1, ChangeToStandardFaction(object16, 1));
			DelayCommand(2.2, ExecuteScript("a_force_combat", oDrdBdyGrd, 0xFFFFFFFF));
			DelayCommand(2.2, ExecuteScript("a_force_combat", object16, 0xFFFFFFFF));
			object oDoor_203exb = GetObjectByTag("door_203exb", 0);
			DelayCommand(1.5, AssignCommand(oDoor_203exb, ActionCloseDoor(oDoor_203exb)));
			DelayCommand(1.6, SetLocked(oDoor_203exb, 1));
			DelayCommand(2.2, DestroyObject(GetObjectByTag("GamGuardLux", 0), 0.0, 1, 0.0, 0));
			DelayCommand(2.2, DestroyObject(GetObjectByTag("GamGuardLux", 1), 0.0, 1, 0.0, 0));
			DelayCommand(2.8, DestroyObject(GetObjectByTag("GamGuardLuxDoor", 0), 0.0, 1, 0.0, 0));
		}
	}
}
