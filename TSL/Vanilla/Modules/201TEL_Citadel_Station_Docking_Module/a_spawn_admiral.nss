void main() {
	location location1 = GetLocation(GetObjectByTag("WP_grenn_spawn", 0));
	object oN_repoff001 = CreateObject(1, "n_repoff001", location1, 0);
	location location3 = GetLocation(GetObjectByTag("WP_grenn_face", 0));
	vector struct2 = GetPositionFromLocation(location3);
	AssignCommand(oN_repoff001, SetFacingPoint(struct2));
	DelayCommand(0.5, SetLockOrientationInDialog(oN_repoff001, 1));
	object oRep_gen;
	location location5 = GetLocation(GetObjectByTag("WP_admiral_spawn", 0));
	if ((GetGlobalNumber("101PER_Revan_End") == 0)) {
		oRep_gen = CreateObject(1, "201_carth", location5, 0);
	}
	else {
		oRep_gen = CreateObject(1, "rep_gen", location5, 0);
	}
	location3 = GetLocation(GetObjectByTag("WP_admiral_face", 0));
	struct2 = GetPositionFromLocation(location3);
	AssignCommand(oRep_gen, SetFacingPoint(struct2));
	DelayCommand(0.5, SetLockHeadFollowInDialog(oRep_gen, 1));
	DelayCommand(0.5, SetLockOrientationInDialog(oRep_gen, 1));
}
