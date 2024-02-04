void main() {
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oVisquis = GetObjectByTag("Visquis", 0);
	object oMira = GetObjectByTag("Mira", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		AssignCommand(oHanharr, ClearAllActions());
		AssignCommand(oVisquis, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oHanharr, ActionJumpToObject(GetObjectByTag("WP_HAN_0", 0), 0)));
		DelayCommand(0.1, AssignCommand(oVisquis, ActionJumpToObject(GetObjectByTag("WP_VIS_0", 0), 0)));
	}
	if ((nParam1 == 1)) {
		AssignCommand(oHanharr, ActionMoveToObject(GetObjectByTag("WP_HAN_1", 0), 0, 1.0));
		AssignCommand(oVisquis, ActionMoveToObject(GetObjectByTag("WP_VIS_1", 0), 0, 1.0));
	}
	if ((nParam1 == 2)) {
		DelayCommand(1.5, AssignCommand(oHanharr, ActionMoveToObject(GetObjectByTag("WP_HAN_2", 0), 0, 1.0)));
		AssignCommand(oVisquis, ActionMoveToObject(GetObjectByTag("WP_VIS_2", 0), 0, 1.0));
	}
	if ((nParam1 == 3)) {
		AssignCommand(oHanharr, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oHanharr, ActionJumpToObject(GetObjectByTag("WP_HAN_2_0", 0), 0)));
	}
	if ((nParam1 == 4)) {
		AssignCommand(oHanharr, ActionMoveToObject(GetObjectByTag("WP_HAN_2_1", 0), 0, 1.0));
		DelayCommand(1.5, AssignCommand(GetObjectByTag("Mira", 0), SetFacingPoint(GetPosition(GetObjectByTag("Hanharr", 0)))));
	}
	if ((nParam1 == 5)) {
		SetLockOrientationInDialog(oMira, 1);
		AssignCommand(oMira, ActionMoveToObject(GetObjectByTag("WP_MIRA_2_1", 0), 0, 1.0));
	}
}