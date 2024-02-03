void main() {
	object oMandalorian = GetObjectByTag("mandalorian", 0);
	object object3 = GetObjectByTag("mandalorian", 1);
	object oMand_lead = GetObjectByTag("mand_lead", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(oMandalorian, ClearAllActions());
		AssignCommand(object3, ClearAllActions());
		AssignCommand(oMand_lead, ClearAllActions());
		object oWP_mands_leave = GetObjectByTag("WP_mands_leave", 0);
		location location1 = GetLocation(oWP_mands_leave);
		AssignCommand(oMand_lead, ActionMoveToLocation(location1, 0));
		DelayCommand(1.0, AssignCommand(oMandalorian, ActionMoveToLocation(location1, 0)));
		DelayCommand(1.5, AssignCommand(object3, ActionMoveToLocation(location1, 0)));
	}
	else {
		if ((nParam1 == 2)) {
			IncrementGlobalNumber("000_Clans_Gath", 1);
			DelayCommand(0.5, DestroyObject(oMandalorian, 0.0, 0, 0.0, 0));
			DelayCommand(0.5, DestroyObject(object3, 0.0, 0, 0.0, 0));
			DelayCommand(1.0, DestroyObject(oMand_lead, 0.0, 0, 0.0, 0));
		}
	}
}

