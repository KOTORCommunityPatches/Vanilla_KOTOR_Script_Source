void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("C6E3", 0), ActionMoveToObject(GetObjectByTag("wp_c6e3_2", 0), 0, 1.0));
		AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_t3m4_2", 0), 1));
	}
	if ((nParam1 == 2)) {
		AssignCommand(GetObjectByTag("C6E3", 0), ActionMoveToObject(GetObjectByTag("wp_c6e3_3", 0), 0, 1.0));
	}
	if ((nParam1 == 3)) {
		object oInner_Door = GetObjectByTag("Inner_Door", 0);
		AssignCommand(oInner_Door, ActionUnlockObject(oInner_Door));
		DelayCommand(0.1, AssignCommand(oInner_Door, ActionOpenDoor(oInner_Door)));
	}
}