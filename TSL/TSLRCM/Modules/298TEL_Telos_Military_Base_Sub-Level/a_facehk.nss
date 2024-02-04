void main() {
	object oPC = GetFirstPC();
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_PC_1", 0)));
	AssignCommand(oPC, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oPC, SetLockOrientationInDialog(oPC, 1));
}