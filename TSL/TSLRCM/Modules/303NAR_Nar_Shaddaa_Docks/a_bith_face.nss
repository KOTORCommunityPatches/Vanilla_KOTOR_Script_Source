void main() {
	object oComputerPanel = GetObjectByTag("ComputerPanel", 0);
	if (GetIsObjectValid(oComputerPanel)) {
		location location1 = GetLocation(oComputerPanel);
		vector struct2 = GetPositionFromLocation(location1);
		object oBithstst = GetObjectByTag("Bithstst", 0);
		if (GetIsObjectValid(oBithstst)) {
			AssignCommand(oBithstst, SetFacingPoint(struct2));
			AssignCommand(oBithstst, ActionPlayAnimation(15, 1.0, (-1.0)));
			AssignCommand(oBithstst, SetLockOrientationInDialog(oComputerPanel, 1));
		}
	}
}