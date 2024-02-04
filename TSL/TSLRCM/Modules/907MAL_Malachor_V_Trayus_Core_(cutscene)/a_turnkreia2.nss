void main() {
	object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
	SetLockOrientationInDialog(oKreiaEvil, 0);
	AssignCommand(oKreiaEvil, SetFacingPoint(GetPosition(GetObjectByTag("Handmaiden", 0))));
}