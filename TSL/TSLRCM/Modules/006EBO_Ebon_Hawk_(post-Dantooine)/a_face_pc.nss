void main() {
	AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("Invis_Reaction", 0))));
	SetLockOrientationInDialog(GetFirstPC(), 1);
}