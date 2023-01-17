void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object oWp_pc_outside = GetObjectByTag("wp_pc_outside", 0);
	object oMalachorDoor01 = GetObjectByTag("MalachorDoor01", 0);
	int int3;
	if ((GetGlobalNumber("003EBO_PC_Hilt") == 2)) {
		int3 = 1;
	}
	else {
		int3 = 0;
	}
	switch (nParam1) {
		case 0:
			SetLightsaberPowered(oPC, 1, 1, 1);
			AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_pc_stab", 0), 0, 1.0));
			if (int3) {
				DelayCommand(2.0, AssignCommand(GetFirstPC(), PlayAnimation(10390, 1.0, 1.0)));
				DelayCommand(4.0, DestroyObject(GetItemInSlot(4, GetFirstPC()), 0.0, 0, 0.0, 0));
			}
			else {
				DelayCommand(2.0, AssignCommand(GetFirstPC(), PlayAnimation(10389, 1.0, 1.0)));
				DelayCommand(4.4, DestroyObject(GetItemInSlot(4, GetFirstPC()), 0.0, 0, 0.0, 0));
			}
			DelayCommand(6.0, AssignCommand(GetFirstPC(), ActionForceMoveToObject(oWp_pc_outside, 0, 1.0, 30.0)));
			DelayCommand(10.0, AssignCommand(oMalachorDoor01, ActionOpenDoor(oMalachorDoor01)));
			DelayCommand(7.5, SetDialogPlaceableCamera(2));
			DelayCommand(9.5, SetDialogPlaceableCamera(22));
			DelayCommand(12.5, SetDialogPlaceableCamera(14));
			break;
		case 1:
			break;
	}
}

