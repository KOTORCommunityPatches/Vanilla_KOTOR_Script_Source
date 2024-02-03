void main() {
	object oAtris = GetObjectByTag("Atris", 0);
	SetLockOrientationInDialog(oAtris, 1);
	AssignCommand(oAtris, ActionMoveToObject(GetWaypointByTag("wp_kreia_end2"), 0, 1.0));
}

