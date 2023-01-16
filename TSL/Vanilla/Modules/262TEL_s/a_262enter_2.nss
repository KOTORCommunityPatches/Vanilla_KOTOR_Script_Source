void main() {
	AurPostString("a_262enter_2: executing..", 5, 7, 5.0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	DelayCommand(0.1, AssignCommand(oHandmaiden, ActionMoveToObject(GetObjectByTag("WP_261_HM_1", 0), 0, 1.0)));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Sister1", 0), ActionMoveToObject(GetObjectByTag("WP_261_S1_1", 0), 0, 1.0)));
	DelayCommand(0.3, AssignCommand(GetObjectByTag("Sister2", 0), ActionMoveToObject(GetObjectByTag("WP_261_S2_1", 0), 0, 1.0)));
}

