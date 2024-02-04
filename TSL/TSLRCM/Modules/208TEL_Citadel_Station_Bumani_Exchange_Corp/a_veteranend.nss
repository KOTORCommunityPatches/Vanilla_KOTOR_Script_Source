void main() {
	SetLockOrientationInDialog(GetFirstPC(), 0);
	SetLocalBoolean(GetObjectByTag("tr_attonfire", 0), 30, 1);
	AssignCommand(GetObjectByTag("Kreia", 0), ActionJumpToObject(GetObjectByTag("wp_bed_kreia", 0), 1));
	AssignCommand(GetObjectByTag("Atton", 0), ActionJumpToObject(GetObjectByTag("wp_bed_atton", 0), 1));
}