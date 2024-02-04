void main() {
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(oBaoDur, ActionMoveToObject(GetObjectByTag("wp_bdur_01", 0), 0, 1.0));
	}
	if ((nParam1 == 2)) {
		SetLockOrientationInDialog(oBaoDur, 1);
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(oBaoDur, SetFacing(90.0));
		AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(GetObjectByTag("wp_baodur_punch_pc", 0))));
		AssignCommand(oBaoDur, ClearAllActions());
		AssignCommand(oBaoDur, ActionJumpToLocation(GetLocation(GetObjectByTag("wp_baodur_punch0", 0))));
		DelayCommand(0.1, AssignCommand(oBaoDur, ActionMoveToObject(GetObjectByTag("wp_baodur_punch", 0), 1, 1.0)));
	}
	if ((nParam1 == 3)) {
		AssignCommand(oBaoDur, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oBaoDur, PlayAnimation(10468, 1.0, 1.0)));
	}
	if ((nParam1 == 4)) {
		AssignCommand(oBaoDur, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oBaoDur, PlayAnimation(10562, 1.0, 1.5)));
		SetLockOrientationInDialog(oBaoDur, 0);
	}
}