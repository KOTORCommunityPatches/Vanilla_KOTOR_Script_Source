void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oRefugee3 = GetObjectByTag("Refugee3", 0);
		AssignCommand(oRefugee3, ActionMoveToObject(GetObjectByTag("wp_refugee3_001", 0), 0, 1.0));
		AssignCommand(oRefugee3, ActionMoveToObject(GetObjectByTag("wp_refugee3_002", 0), 0, 1.0));
		object oD_refugee3 = GetObjectByTag("d_refugee3", 0);
		DelayCommand(3.0, AssignCommand(oD_refugee3, ActionOpenDoor(oD_refugee3)));
		DelayCommand(4.0, AssignCommand(oRefugee3, ActionJumpToObject(GetObjectByTag("wp_refugee3_003", 0), 1)));
	}
	else {
		if ((nParam1 == 2)) {
			AssignCommand(GetObjectByTag("Refugee3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("wp_refugee3_004", 0)), 0));
			CreateObject(1, "refugee4", GetLocation(GetObjectByTag("wp_refugee4_sp", 0)), 0);
		}
		else {
			if ((nParam1 == 3)) {
				AssignCommand(GetObjectByTag("Refugee4", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("wp_refugee4_001", 0)), 0));
			}
			else {
				if ((nParam1 == 4)) {
					object oRefugee4 = GetObjectByTag("Refugee4", 0);
					AssignCommand(oRefugee4, ActionPlayAnimation(10468, 1.0, 0.0));
					AssignCommand(oRefugee4, ActionPlayAnimation(7, 1.0, 3.0));
					DelayCommand(3.0, AssignCommand(GetObjectByTag("Refugee3", 0), ActionPlayAnimation(10467, 1.0, 0.0)));
				}
				else {
					if ((nParam1 == 5)) {
						object object17 = GetObjectByTag("Refugee3", 0);
						object object19 = GetObjectByTag("Refugee4", 0);
						AssignCommand(object19, ActionPlayAnimation(10088, 1.0, 0.0));
						DelayCommand(0.5, AssignCommand(object17, ActionPlayAnimation(26, 1.0, (-1.0))));
						DelayCommand(3.0, AssignCommand(object19, ActionPlayAnimation(10040, 1.0, 0.0)));
						DelayCommand(3.0, AssignCommand(object19, ActionMoveToObject(GetObjectByTag("wp_refugee4_002", 0), 0, 1.0)));
					}
					else {
						if ((nParam1 == 6)) {
							object object22 = GetObjectByTag("Refugee3", 0);
							AssignCommand(object22, ActionMoveToObject(GetObjectByTag("wp_refugee3_001", 0), 1, 1.0));
							AssignCommand(object22, ActionMoveToObject(GetObjectByTag("wp_refugee3_002", 0), 1, 1.0));
							object object26 = GetObjectByTag("d_refugee3", 0);
							DelayCommand(2.0, AssignCommand(object26, ActionOpenDoor(object26)));
							DelayCommand(4.0, AssignCommand(object22, ActionJumpToObject(GetObjectByTag("wp_refugee3_003", 0), 1)));
						}
						else {
							if ((nParam1 == 7)) {
								AssignCommand(GetObjectByTag("Refugee3", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("wp_refugee3_004", 0)), 1));
								CreateObject(1, "refugee4", GetLocation(GetObjectByTag("wp_refugee4_sp", 0)), 0);
							}
							else {
								if ((nParam1 == 8)) {
									object object33 = GetObjectByTag("Refugee4", 0);
									AssignCommand(object33, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_refugee4_001", 0)), 1));
									AssignCommand(object33, ActionPlayAnimation(10040, 1.0, 0.0));
								}
								else {
									if ((nParam1 == 9)) {
										object object36 = GetObjectByTag("Refugee3", 0);
										object object38 = GetObjectByTag("Refugee4", 0);
										AssignCommand(object36, ActionPlayAnimation(10088, 1.0, 0.0));
										DelayCommand(0.5, AssignCommand(object38, ActionPlayAnimation(26, 1.0, (-1.0))));
										DelayCommand(3.0, AssignCommand(object36, ActionMoveToObject(GetObjectByTag("wp_refugee4_002", 0), 1, 1.0)));
									}
									else {
										if ((nParam1 == 10)) {
											DelayCommand(1.0, DestroyObject(GetObjectByTag("Refugee4", 0), 0.0, 0, 0.0, 0));
											DelayCommand(1.0, DestroyObject(GetObjectByTag("Refugee3", 0), 0.0, 0, 0.0, 0));
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
