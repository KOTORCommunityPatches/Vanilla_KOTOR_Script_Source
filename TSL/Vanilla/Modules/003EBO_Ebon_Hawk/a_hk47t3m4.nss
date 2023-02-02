void main() {
	object oT3M4 = GetObjectByTag("T3M4", 0);
	object oHK47 = GetObjectByTag("HK47", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetLockOrientationInDialog(oT3M4, 1);
			SetLockOrientationInDialog(oHK47, 1);
			DelayCommand(1.0, AssignCommand(oT3M4, ActionPlayAnimation(113, 1.0, 0.0)));
			{
				object oRWeapItem = GetItemInSlot(5, oHK47);
				if (GetIsObjectValid(oRWeapItem)) {
					AssignCommand(oHK47, ActionUnequipItem(oRWeapItem, 0));
				}
				oRWeapItem = GetItemInSlot(4, oHK47);
				if (GetIsObjectValid(oRWeapItem)) {
					AssignCommand(oHK47, ActionUnequipItem(oRWeapItem, 0));
				}
			}
			break;
		case 2:
			break;
		case 3:
			DelayCommand(0.6, AssignCommand(oT3M4, SetFacingPoint(GetPosition(oHK47))));
			break;
		case 4:
			{
				object oWP_hk47_cut_2_1 = GetObjectByTag("WP_hk47_cut_2_1", 0);
				AssignCommand(oHK47, ActionWait(1.5));
				AssignCommand(oHK47, ActionMoveToObject(oWP_hk47_cut_2_1, 0, 1.0));
				AssignCommand(oHK47, ActionPlayAnimation(2, 1.0, (-1.0)));
				DelayCommand(3.5, SetDialogPlaceableCamera(15));
			}
			break;
		case 5:
			break;
		case 6:
			{
				object oWP_hk47_cut_2_2 = GetObjectByTag("WP_hk47_cut_2_2", 0);
				AssignCommand(oHK47, ActionPlayAnimation(101, 1.0, 0.0));
				AssignCommand(oHK47, ActionWait(1.0));
				AssignCommand(oHK47, ActionMoveToObject(oWP_hk47_cut_2_2, 0, 0.5));
				AssignCommand(oHK47, ActionDoCommand(AssignCommand(oT3M4, SetFacingPoint(GetPosition(oHK47)))));
			}
			break;
		case 7:
			break;
		case 8:
			{
				effect efBeam = EffectBeam(2052, oT3M4, 0, 0);
				ApplyEffectToObject(1, efBeam, oHK47, 6.0);
				DelayCommand(0.1, AssignCommand(oHK47, ActionPlayAnimation(21, 1.0, 2.9)));
				DelayCommand(3.0, AssignCommand(oHK47, ClearAllActions()));
				DelayCommand(3.0, AssignCommand(oHK47, ActionPlayAnimation(26, 1.0, (-1.0))));
			}
			break;
	}
}
