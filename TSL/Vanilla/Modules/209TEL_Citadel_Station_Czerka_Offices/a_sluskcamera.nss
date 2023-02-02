void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oIth_cage = GetObjectByTag("ith_cage", 0);
		if (GetIsObjectValid(oIth_cage)) {
			DestroyObject(oIth_cage, 0.0, 0, 0.0, 0);
		}
		DelayCommand(0.2, AssignCommand(GetObjectByTag("forcecage2", 0), ActionPlayAnimation(202, 1.0, 0.0)));
		DelayCommand(2.0, AssignCommand(GetObjectByTag("ithorian_prisoner", 0), ActionMoveToObject(GetObjectByTag("wp_ithpris_01", 0), 1, 1.0)));
		DelayCommand(6.0, DestroyObject(GetObjectByTag("ithorian_prisoner", 0), 0.0, 0, 0.0, 0));
	}
}
