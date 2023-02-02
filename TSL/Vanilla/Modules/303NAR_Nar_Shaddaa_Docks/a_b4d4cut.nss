void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ChangeToStandardFaction(GetObjectByTag("T1N1", 0), 1);
	}
	if ((nParam1 == 2)) {
		object oB4D4 = GetObjectByTag("B4D4", 0);
		AssignCommand(oB4D4, ActionMoveToObject(GetObjectByTag("wp_b4d4_1", 0), 0, 1.0));
		DelayCommand(5.0, DestroyObject(oB4D4, 0.0, 0, 0.0, 0));
	}
}
