void main() {
	object o203_t1n1 = GetObjectByTag("203_t1n1", 0);
	object oDead_duck_2 = GetObjectByTag("dead_duck_2", 0);
	if (GetIsObjectValid(oDead_duck_2)) {
		vector struct2 = GetPositionFromLocation(GetLocation(oDead_duck_2));
		AssignCommand(o203_t1n1, ActionDoCommand(SetFacingPoint(struct2)));
		AssignCommand(o203_t1n1, SetLockOrientationInDialog(o203_t1n1, 1));
		vector struct4 = GetPositionFromLocation(GetLocation(GetObjectByTag("203_t1n1", 0)));
		AssignCommand(oDead_duck_2, ActionDoCommand(SetFacingPoint(struct4)));
		AssignCommand(oDead_duck_2, SetLockOrientationInDialog(oDead_duck_2, 1));
	}
}