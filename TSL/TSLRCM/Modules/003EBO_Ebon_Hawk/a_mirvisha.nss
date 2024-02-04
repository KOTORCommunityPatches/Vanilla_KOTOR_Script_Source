void main() {
	int nParam1 = GetScriptParameter(1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oMira = GetObjectByTag("Mira", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	switch (nParam1) {
		case 1:
			AssignCommand(oVisasMarr, ClearAllActions());
			AssignCommand(oVisasMarr, ActionPlayAnimation(3, 1.0, (-1.0)));
			break;
		case 2:
			SetLockOrientationInDialog(oMira, 1);
			{
				object oWP_maid_cut_3_end = GetObjectByTag("WP_mira_cut_1_end", 0);
				effect effect1 = EffectMovementSpeedDecrease(36);
				ApplyEffectToObject(1, effect1, oMira, 30.0);
				ApplyEffectToObject(1, effect1, oHandmaiden, 30.0);
				AssignCommand(oMira, ClearAllActions());
				AssignCommand(oMira, ActionMoveToObject(oWP_maid_cut_3_end, 0, 1.0));
				oWP_maid_cut_3_end = GetObjectByTag("WP_maid_cut_3_end", 0);
				AssignCommand(oHandmaiden, ClearAllActions());
				AssignCommand(oHandmaiden, ActionMoveToObject(oWP_maid_cut_3_end, 0, 1.0));
			}
			break;
		case 3:
			SetLockOrientationInDialog(oMira, 0);
			AssignCommand(oHandmaiden, ClearAllActions());
			AssignCommand(oHandmaiden, DelayCommand(0.3, SetFacingPoint(GetPosition(oMira))));
			AssignCommand(oMira, DelayCommand(0.5, ClearAllActions()));
			AssignCommand(oMira, DelayCommand(0.6, SetFacingPoint(GetPosition(oHandmaiden))));
			break;
	}
}