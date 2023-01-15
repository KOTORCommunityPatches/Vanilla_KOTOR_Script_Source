void main() {
	int nParam1 = GetScriptParameter(1);
	object oVossk_Gand1 = GetObjectByTag("Vossk_Gand1", 0);
	object oVossk_Gand2 = GetObjectByTag("Vossk_Gand2", 0);
	object oVossk_Gand3 = GetObjectByTag("Vossk_Gand3", 0);
	if ((nParam1 == 0)) {
		AssignCommand(oVossk_Gand1, ClearAllActions());
		AssignCommand(oVossk_Gand2, ClearAllActions());
		AssignCommand(oVossk_Gand3, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oVossk_Gand1, ActionJumpToObject(GetWaypointByTag("WP_VOSSK_GAND1_0"), 1)));
		DelayCommand(0.1, AssignCommand(oVossk_Gand2, ActionJumpToObject(GetWaypointByTag("WP_VOSSK_GAND2_0"), 1)));
		DelayCommand(0.1, AssignCommand(oVossk_Gand3, ActionJumpToObject(GetWaypointByTag("WP_VOSSK_GAND3_0"), 1)));
	}
	if ((nParam1 == 1)) {
		AssignCommand(oVossk_Gand1, ClearAllActions());
		AssignCommand(oVossk_Gand2, ClearAllActions());
		AssignCommand(oVossk_Gand3, ClearAllActions());
		DelayCommand(0.5, AssignCommand(oVossk_Gand1, ActionMoveToObject(GetWaypointByTag("WP_VOSSK_GAND1_1"), 0, 1.0)));
		DelayCommand(0.5, AssignCommand(oVossk_Gand2, ActionMoveToObject(GetWaypointByTag("WP_VOSSK_GAND2_1"), 0, 1.0)));
		DelayCommand(0.5, AssignCommand(oVossk_Gand3, ActionMoveToObject(GetWaypointByTag("WP_VOSSK_GAND3_1"), 0, 1.0)));
	}
}

