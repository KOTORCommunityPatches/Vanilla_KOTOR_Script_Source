void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalNumber("201TEL_Thugs", 1);
		CreateObject(1, "g_201thug", GetLocation(GetWaypointByTag("WP_THUG1")), 0);
		CreateObject(1, "g_201thug2", GetLocation(GetWaypointByTag("WP_THUG2")), 0);
		CreateObject(1, "g_201thug001", GetLocation(GetWaypointByTag("WP_THUG3")), 0);
		CreateObject(1, "g_201thug003", GetLocation(GetWaypointByTag("WP_THUG4")), 0);
		CreateObject(1, "g_201thug004", GetLocation(GetWaypointByTag("WP_THUG5")), 0);
	}
	if ((nParam1 == 2)) {
		AssignCommand(GetObjectByTag("g_201thug1", 0), ActionMoveToObject(GetWaypointByTag("WP_THUG01_1"), 0, 1.0));
		AssignCommand(GetObjectByTag("g_201thug2", 0), ActionMoveToObject(GetWaypointByTag("WP_THUG02_1"), 0, 1.0));
		AssignCommand(GetObjectByTag("g_201thug3", 0), ActionMoveToObject(GetWaypointByTag("WP_THUG03_1"), 0, 1.0));
		AssignCommand(GetObjectByTag("g_201thug4", 0), ActionMoveToObject(GetWaypointByTag("WP_THUG04_1"), 0, 1.0));
		AssignCommand(GetObjectByTag("g_201thug5", 0), ActionMoveToObject(GetWaypointByTag("WP_THUG05_1"), 0, 1.0));
	}
	if ((nParam1 == 3)) {
		ChangeToStandardFaction(GetObjectByTag("g_201thug1", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("g_201thug2", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("g_201thug3", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("g_201thug4", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("g_201thug5", 0), 1);
	}
	if ((nParam1 == 4)) {
		SetGlobalNumber("201TEL_Thugs", 8);
		SetGlobalNumber("203TEL_DroidInt_1", 3);
		AssignCommand(GetPCSpeaker(), ActionForceMoveToObject(GetObjectByTag("WP_THUG3", 0), 0, 1.0, 30.0));
		AssignCommand(GetObjectByTag("DrdIth", 0), ActionForceMoveToObject(GetObjectByTag("WP_THUG3", 0), 0, 1.0, 30.0));
		object oAirlock2a = GetObjectByTag("Airlock2a", 0);
		AssignCommand(oAirlock2a, ActionCloseDoor(oAirlock2a));
		DelayCommand(0.1, AssignCommand(oAirlock2a, ActionLockObject(oAirlock2a)));
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		DelayCommand(3.0, StartNewModule("204TEL", "FROM_201TEL_ITHM1", "", "", "", "", "", ""));
	}
	if ((nParam1 == 5)) {
		SetGlobalNumber("201TEL_Thugs", 8);
		SetGlobalNumber("203TEL_DroidInt_1", 3);
		AssignCommand(GetPCSpeaker(), ActionForceMoveToObject(GetObjectByTag("WP_THUG3", 0), 0, 1.0, 30.0));
		AssignCommand(GetObjectByTag("DrdIth", 0), ActionForceMoveToObject(GetObjectByTag("WP_THUG3", 0), 0, 1.0, 30.0));
		object object36 = GetObjectByTag("Airlock2a", 0);
		AssignCommand(object36, ActionCloseDoor(object36));
		DelayCommand(0.1, AssignCommand(object36, ActionLockObject(object36)));
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		DelayCommand(3.0, StartNewModule("209TEL", "FROM_201TEL_CZEM1", "", "", "", "", "", ""));
	}
}

