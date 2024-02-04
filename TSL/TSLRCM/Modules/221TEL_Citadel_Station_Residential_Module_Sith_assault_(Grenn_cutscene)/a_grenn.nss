void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
	}
	else {
		if ((nParam1 == 2)) {
			AssignCommand(GetObjectByTag("dan_lead", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("dan_lead", 0), ActionMoveToObject(GetObjectByTag("wp_danlead_01", 0), 0, 1.0));
		}
		else {
			if ((nParam1 == 3)) {
				AssignCommand(GetObjectByTag("dan_lead", 0), ActionMoveToObject(GetObjectByTag("wp_danlead_02", 0), 1, 1.0));
				DelayCommand(0.1, AssignCommand(GetObjectByTag("dan_lead", 0), ActionMoveToObject(GetObjectByTag("wp_danlead_03", 0), 1, 1.0)));
				DelayCommand(1.2, AssignCommand(GetObjectByTag("militia", 0), ActionMoveToObject(GetObjectByTag("wp_militia1_01", 0), 1, 1.0)));
				DelayCommand(1.2, AssignCommand(GetObjectByTag("militia", 1), ActionMoveToObject(GetObjectByTag("wp_militia2_01", 0), 1, 1.0)));
				DelayCommand(2.1, AssignCommand(GetObjectByTag("militia", 0), ActionMoveToObject(GetObjectByTag("wp_militia1_02", 0), 1, 1.0)));
				DelayCommand(2.1, AssignCommand(GetObjectByTag("militia", 1), ActionMoveToObject(GetObjectByTag("wp_militia2_02", 0), 1, 1.0)));
				DelayCommand(7.0, AssignCommand(GetObjectByTag("dan_lead", 0), ActionJumpToObject(GetObjectByTag("wp_danlead_04", 0), 1)));
				DelayCommand(7.0, AssignCommand(GetObjectByTag("militia", 0), ActionJumpToObject(GetObjectByTag("wp_militia1_03", 0), 1)));
				DelayCommand(7.0, AssignCommand(GetObjectByTag("militia", 1), ActionJumpToObject(GetObjectByTag("wp_militia2_03", 0), 1)));
			}
		}
	}
}