void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		CreateObject(1, "g_darkjedi006", GetLocation(GetWaypointByTag("WP_UBH_ALARM_3_0")), 0);
		CreateObject(1, "g_darkjedi007", GetLocation(GetWaypointByTag("WP_UBH_ALARM_4_0")), 0);
		CreateObject(1, "g_darkjedi008", GetLocation(GetWaypointByTag("WP_UBH_ALARM_5_0")), 0);
	}
	if ((nParam1 == 1)) {
		object oUBH305Alarm3 = GetObjectByTag("UBH305Alarm3", 0);
		object oUBH305Alarm4 = GetObjectByTag("UBH305Alarm4", 0);
		object oUBH305Alarm5 = GetObjectByTag("UBH305Alarm5", 0);
		AssignCommand(oUBH305Alarm3, ActionMoveToObject(GetObjectByTag("WP_UBH_ALARM_3_1", 0), 1, 1.0));
		DelayCommand(0.5, AssignCommand(oUBH305Alarm4, ActionMoveToObject(GetObjectByTag("WP_UBH_ALARM_4_1", 0), 1, 1.0)));
		DelayCommand(1.0, AssignCommand(oUBH305Alarm5, ActionMoveToObject(GetObjectByTag("WP_UBH_ALARM_5_1", 0), 1, 1.0)));
	}
	if ((nParam1 == 2)) {
		CreateObject(1, "g_darkjedi003", GetLocation(GetWaypointByTag("WP_VIS_AMB_1_0")), 0);
		CreateObject(1, "g_darkjedi004", GetLocation(GetWaypointByTag("WP_VIS_AMB_2_0")), 0);
		CreateObject(1, "g_darkjedi006", GetLocation(GetWaypointByTag("WP_VIS_AMB_3_0")), 0);
		CreateObject(1, "g_darkjedi007", GetLocation(GetWaypointByTag("WP_VIS_AMB_4_0")), 0);
		CreateObject(1, "g_darkjedi008", GetLocation(GetWaypointByTag("WP_VIS_AMB_5_0")), 0);
		CreateObject(1, "g_darkjedi009", GetLocation(GetWaypointByTag("WP_VIS_AMB_6_0")), 0);
	}
	if ((nParam1 == 3)) {
		object oUBH305Alarm1 = GetObjectByTag("UBH305Alarm1", 0);
		DelayCommand(0.5, AssignCommand(oUBH305Alarm1, ActionForceMoveToObject(GetObjectByTag("WP_VIS_AMB_1_1", 0), 1, 1.0, 30.0)));
	}
	if ((nParam1 == 4)) {
		object object31 = GetObjectByTag("UBH305Alarm1", 0);
		object oUBH305Alarm2 = GetObjectByTag("UBH305Alarm2", 0);
		object object35 = GetObjectByTag("UBH305Alarm3", 0);
		object object37 = GetObjectByTag("UBH305Alarm4", 0);
		object object39 = GetObjectByTag("UBH305Alarm5", 0);
		object oUBH305Alarm6 = GetObjectByTag("UBH305Alarm6", 0);
		object oVisquis = GetObjectByTag("Visquis", 0);
		DelayCommand(1.0, AssignCommand(object31, ActionMoveToObject(GetObjectByTag("WP_VIS_AMB_1_2", 0), 1, 1.0)));
		DelayCommand(1.0, AssignCommand(oUBH305Alarm2, ActionMoveToObject(GetObjectByTag("WP_VIS_AMB_2_2", 0), 1, 1.0)));
		DelayCommand(1.0, AssignCommand(object35, ActionMoveToObject(GetObjectByTag("WP_VIS_AMB_3_2", 0), 1, 1.0)));
		DelayCommand(1.3, AssignCommand(object37, ActionMoveToObject(GetObjectByTag("WP_VIS_AMB_4_2", 0), 1, 1.0)));
		DelayCommand(1.5, AssignCommand(object39, ActionMoveToObject(GetObjectByTag("WP_VIS_AMB_5_2", 0), 1, 1.0)));
		DelayCommand(2.0, AssignCommand(oUBH305Alarm6, ActionMoveToObject(GetObjectByTag("WP_VIS_AMB_6_2", 0), 1, 1.0)));
	}
	if ((nParam1 == 5)) {
		object object51 = GetObjectByTag("UBH305Alarm1", 0);
		object object53 = GetObjectByTag("UBH305Alarm2", 0);
		object object55 = GetObjectByTag("UBH305Alarm3", 0);
		object object57 = GetObjectByTag("UBH305Alarm4", 0);
		object object59 = GetObjectByTag("UBH305Alarm5", 0);
		object object61 = GetObjectByTag("UBH305Alarm6", 0);
		object object63 = GetObjectByTag("Visquis", 0);
		AssignCommand(object51, ClearAllActions());
		AssignCommand(object53, ClearAllActions());
		AssignCommand(object55, ClearAllActions());
		AssignCommand(object57, ClearAllActions());
		AssignCommand(object59, ClearAllActions());
		AssignCommand(object61, ClearAllActions());
		AssignCommand(object51, ActionJumpToObject(GetObjectByTag("WP_VIS_AMB_1_3", 0), 1));
		AssignCommand(object53, ActionJumpToObject(GetObjectByTag("WP_VIS_AMB_2_3", 0), 1));
		AssignCommand(object55, ActionJumpToObject(GetObjectByTag("WP_VIS_AMB_3_3", 0), 1));
		AssignCommand(object57, ActionJumpToObject(GetObjectByTag("WP_VIS_AMB_4_3", 0), 1));
		AssignCommand(object59, ActionJumpToObject(GetObjectByTag("WP_VIS_AMB_5_3", 0), 1));
		AssignCommand(object61, ActionJumpToObject(GetObjectByTag("WP_VIS_AMB_6_3", 0), 1));
	}
	if ((nParam1 == 6)) {
		object object71 = GetObjectByTag("UBH305Alarm1", 0);
		object object73 = GetObjectByTag("Visquis", 0);
		AssignCommand(object71, ActionPlayAnimation(10522, 1.0, 0.0));
	}
	if ((nParam1 == 7)) {
		object object75 = GetObjectByTag("UBH305Alarm1", 0);
		object object77 = GetObjectByTag("UBH305Alarm2", 0);
		object object79 = GetObjectByTag("UBH305Alarm3", 0);
		object object81 = GetObjectByTag("UBH305Alarm4", 0);
		object object83 = GetObjectByTag("UBH305Alarm5", 0);
		object object85 = GetObjectByTag("UBH305Alarm6", 0);
		AssignCommand(object75, ClearAllActions());
		AssignCommand(object77, ClearAllActions());
		AssignCommand(object79, ClearAllActions());
		AssignCommand(object81, ClearAllActions());
		AssignCommand(object83, ClearAllActions());
		AssignCommand(object85, ClearAllActions());
		DelayCommand(0.5, AssignCommand(object75, SetFacingPoint(GetPosition(GetObjectByTag("DoorRing", 0)))));
		DelayCommand(1.0, AssignCommand(object77, SetFacingPoint(GetPosition(GetObjectByTag("DoorRing", 0)))));
		DelayCommand(1.5, AssignCommand(object79, SetFacingPoint(GetPosition(GetObjectByTag("DoorRing", 0)))));
		DelayCommand(2.0, AssignCommand(object81, SetFacingPoint(GetPosition(GetObjectByTag("DoorRing", 0)))));
		DelayCommand(2.5, AssignCommand(object83, SetFacingPoint(GetPosition(GetObjectByTag("DoorRing", 0)))));
		DelayCommand(3.0, AssignCommand(object83, SetFacingPoint(GetPosition(GetObjectByTag("DoorRing", 0)))));
	}
}
