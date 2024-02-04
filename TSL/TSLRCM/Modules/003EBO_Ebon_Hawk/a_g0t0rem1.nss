void main() {
	int nParam1 = GetScriptParameter(1);
	object oG0T0 = GetObjectByTag("G0T0", 0);
	object oRemote = GetObjectByTag("Remote", 0);
	AurPostString((IntToString(nParam1) + "Case called a_g0t0rem1"), 5, 5, 5.0);
	switch (nParam1) {
		case 1:
			{
				location location1 = GetLocation(GetObjectByTag("WP_remote_cut_1_01", 0));
				location location3 = GetLocation(GetObjectByTag("WP_remote_cut_1_02", 0));
				AssignCommand(oRemote, ClearAllActions());
				AssignCommand(oRemote, ActionWait(0.1));
				AssignCommand(oRemote, ActionMoveToLocation(location1, 0));
				AssignCommand(oRemote, ActionWait(1.0));
				AssignCommand(oRemote, ActionMoveToLocation(location3, 0));
				AssignCommand(oRemote, ActionWait(1.0));
				AssignCommand(oRemote, ActionMoveToLocation(location1, 0));
				AssignCommand(oRemote, ActionWait(1.0));
				AssignCommand(oRemote, ActionMoveToLocation(location3, 0));
				AssignCommand(oRemote, ActionWait(1.0));
				AssignCommand(oRemote, ActionMoveToLocation(location1, 0));
				AssignCommand(oRemote, ActionWait(1.0));
				AssignCommand(oRemote, ActionMoveToLocation(location3, 0));
			}
			break;
		case 2:
			break;
		case 3:
			{
				effect efSpeedInc = EffectMovementSpeedIncrease(200);
				ApplyEffectToObject(1, efSpeedInc, oRemote, 5.0);
				AssignCommand(oG0T0, DelayCommand(1.0, SetFacingPoint(GetPosition(oRemote))));
				AssignCommand(oRemote, DelayCommand(1.5, ClearAllActions()));
				AssignCommand(oRemote, DelayCommand(1.6, ActionMoveToObject(GetObjectByTag("WP_remote_cut_1_03", 0), 1, 1.0)));
			}
			break;
		case 10:
			{
				object oWP_remote_cut_2_1 = GetObjectByTag("WP_remote_cut_2_1", 0);
				SetLockOrientationInDialog(oRemote, 1);
				AssignCommand(oRemote, ClearAllActions());
				AssignCommand(oRemote, ActionMoveToObject(oWP_remote_cut_2_1, 0, 1.0));
			}
			break;
		case 11:
			break;
		case 12:
			{
				effect efBeam = EffectBeam(2028, oG0T0, 1, 0);
				object oWP_g0t0_cut_3_1 = GetObjectByTag("WP_g0t0_cut_3_1", 0);
				AssignCommand(oG0T0, ClearAllActions());
				AssignCommand(oG0T0, ActionJumpToObject(oWP_g0t0_cut_3_1, 1));
				DelayCommand(1.0, AssignCommand(oRemote, SetFacingPoint(GetPosition(oG0T0))));
				DelayCommand(2.0, ApplyEffectToObject(1, efBeam, oRemote, 2.0));
				DelayCommand(2.1, AssignCommand(oRemote, ActionPlayAnimation(21, 1.0, (-1.0))));
				DelayCommand(3.5, AssignCommand(oRemote, ActionPlayAnimation(26, 1.0, (-1.0))));
				DelayCommand(5.0, AssignCommand(oG0T0, ActionMoveToObject(oRemote, 0, 1.0)));
				DelayCommand(6.0, AssignCommand(oG0T0, ActionPlayAnimation(33, 1.0, (-1.0))));
				DelayCommand(6.8, SetDialogPlaceableCamera(12));
			}
			break;
	}
}