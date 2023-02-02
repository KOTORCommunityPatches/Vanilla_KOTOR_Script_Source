void main() {
	object oMainOff = GetObjectByTag("MainOff", 0);
	if ((!GetIsObjectValid(oMainOff))) {
		return;
	}
	DestroyObject(oMainOff, 0.0, 1, 0.0, 0);
	DelayCommand(0.1, AssignCommand(GetFirstPC(), SetFacing(GetFacing(GetWaypointByTag("WP_DroCon")))));
}
