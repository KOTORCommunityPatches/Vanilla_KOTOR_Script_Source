void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oDoor_Warehouse_Outer = GetObjectByTag("Door_Warehouse_Outer", 0);
		object oKodin = GetObjectByTag("Kodin", 0);
		object oWp_kodin_1 = GetObjectByTag("wp_kodin_1", 0);
		SetLocked(oDoor_Warehouse_Outer, 0);
		DelayCommand(0.1, AssignCommand(oDoor_Warehouse_Outer, ActionOpenDoor(oDoor_Warehouse_Outer)));
		AssignCommand(oKodin, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oKodin, ActionForceMoveToLocation(GetLocation(oWp_kodin_1), 0, 30.0)));
	}
	else {
		if ((nParam1 == 2)) {
			object oDoor_Warehouse_Inner = GetObjectByTag("Door_Warehouse_Inner", 0);
			DelayCommand(0.2, AssignCommand(oDoor_Warehouse_Inner, ActionUnlockObject(oDoor_Warehouse_Inner)));
			DelayCommand(1.0, AssignCommand(oDoor_Warehouse_Inner, ActionOpenDoor(oDoor_Warehouse_Inner)));
			object object9 = GetObjectByTag("Door_Warehouse_Outer", 0);
			DelayCommand(0.2, AssignCommand(object9, ActionCloseDoor(object9)));
			DelayCommand(1.0, AssignCommand(object9, ActionLockObject(object9)));
		}
		else {
			if ((nParam1 == 3)) {
				SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
				DelayCommand(1.0, SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0));
				DelayCommand(1.0, DestroyObject(GetObjectByTag("Kodin", 0), 0.0, 1, 0.0, 0));
			}
		}
	}
}
