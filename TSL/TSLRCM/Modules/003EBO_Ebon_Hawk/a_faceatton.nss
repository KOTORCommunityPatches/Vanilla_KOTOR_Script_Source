void main() {
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_baodur_cut_3", 0)));
	AssignCommand(GetObjectByTag("Atton", 0), ActionJumpToLocation(Location(Vector(58.6226, 30.7991, 1.8), 120.0)));
	DelayCommand(0.3, AssignCommand(GetObjectByTag("Atton", 0), ActionDoCommand(SetFacingPoint(struct2))));
	DelayCommand(0.3, AssignCommand(GetObjectByTag("Atton", 0), SetLockOrientationInDialog(GetObjectByTag("Atton", 0), 1)));
	DelayCommand(0.3, AssignCommand(GetObjectByTag("Atton", 0), ActionPlayAnimation(31, 1.0, (-1.0))));
}