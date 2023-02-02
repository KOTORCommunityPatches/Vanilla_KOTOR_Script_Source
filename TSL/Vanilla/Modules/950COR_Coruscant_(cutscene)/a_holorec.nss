void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
		object oJediMaster1 = GetObjectByTag("JediMaster1", 0);
		object oJediMaster2 = GetObjectByTag("JediMaster2", 0);
		object oJediMaster3 = GetObjectByTag("JediMaster3", 0);
		object oJediMaster4 = GetObjectByTag("JediMaster4", 0);
		object oAtrisTemp = GetObjectByTag("AtrisTemp", 0);
		SetLockOrientationInDialog(oJediMaster1, 1);
		SetLockOrientationInDialog(oJediMaster2, 1);
		SetLockOrientationInDialog(oJediMaster3, 1);
		SetLockOrientationInDialog(oJediMaster4, 1);
		SetLockOrientationInDialog(oAtrisTemp, 1);
		AssignCommand(oJediMaster1, ActionPlayAnimation(36, 1.0, 1000.0));
		AssignCommand(oJediMaster2, ActionPlayAnimation(36, 1.0, 1000.0));
		AssignCommand(oJediMaster3, ActionPlayAnimation(36, 1.0, 1000.0));
		AssignCommand(oJediMaster4, ActionPlayAnimation(36, 1.0, 1000.0));
		AssignCommand(oAtrisTemp, ActionPlayAnimation(36, 1.0, 1000.0));
		DelayCommand(1.5, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_pc_1", 0), 0, 1.0)));
	}
	else {
		if ((nParam1 == 2)) {
			SetGlobalFadeOut(1.0, 2.0, 0.0, 0.0, 0.0);
		}
		else {
			if ((nParam1 == 3)) {
				DelayCommand(2.0, SetDialogPlaceableCamera(21));
				DelayCommand(4.0, SetDialogPlaceableCamera(15));
				DelayCommand(6.0, SetDialogPlaceableCamera(17));
				DelayCommand(8.0, SetDialogPlaceableCamera(19));
			}
			else {
				if ((nParam1 == 4)) {
					SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
				}
				else {
					if ((nParam1 == 5)) {
						object object13 = GetObjectByTag("JediMaster1", 0);
						object object15 = GetObjectByTag("JediMaster2", 0);
						object object17 = GetObjectByTag("JediMaster3", 0);
						object object19 = GetObjectByTag("JediMaster4", 0);
						object object21 = GetObjectByTag("AtrisTemp", 0);
						SetLockOrientationInDialog(object13, 1);
						SetLockOrientationInDialog(object15, 1);
						SetLockOrientationInDialog(object17, 1);
						SetLockOrientationInDialog(object19, 1);
						SetLockOrientationInDialog(object21, 1);
						AssignCommand(object13, ClearAllActions());
						AssignCommand(object15, ClearAllActions());
						AssignCommand(object17, ClearAllActions());
						AssignCommand(object19, ClearAllActions());
						AssignCommand(object21, ClearAllActions());
						AssignCommand(object13, ActionPlayAnimation(19, 1.0, 1000.0));
						AssignCommand(object15, ActionPlayAnimation(19, 1.0, 1000.0));
						AssignCommand(object17, ActionPlayAnimation(19, 1.0, 1000.0));
						AssignCommand(object19, ActionPlayAnimation(19, 1.0, 1000.0));
						AssignCommand(object21, ActionPlayAnimation(19, 1.0, 1000.0));
					}
				}
			}
		}
	}
}
