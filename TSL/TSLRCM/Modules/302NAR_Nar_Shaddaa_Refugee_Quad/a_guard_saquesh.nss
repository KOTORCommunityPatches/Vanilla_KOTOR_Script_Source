void main() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	object oWP_guard2_exit;
	object oPersonal_guard2;
	if ((nParam1 == 1)) {
		oPersonal_guard2 = GetObjectByTag("personal_guard1", 0);
		oWP_guard2_exit = GetObjectByTag("WP_guard1_exit", 0);
	}
	else {
		if ((nParam1 == 2)) {
			oPersonal_guard2 = GetObjectByTag("personal_guard2", 0);
			oWP_guard2_exit = GetObjectByTag("WP_guard2_exit", 0);
		}
		else {
			AurPostString("(AWD)ERROR: No Guard Parameter.", 5, 5, 60.0);
		}
	}
	if (GetIsObjectValid(oPersonal_guard2)) {
		SetCreatureAILevel(oPersonal_guard2, 3);
		AssignCommand(oPersonal_guard2, ClearAllActions());
		AssignCommand(oPersonal_guard2, ActionForceMoveToObject(oWP_guard2_exit, 1, 1.0, 30.0));
		DelayCommand(4.0, DestroyObject(oPersonal_guard2, 0.0, 0, 0.0, 0));
		if ((nParam1 == 1)) {
			DestroyObject(GetObjectByTag("nadaa", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("adana", 0), 0.0, 0, 0.0, 0);
		}
		else {
			if ((nParam1 == 2)) {
				DestroyObject(GetObjectByTag("geriel", 0), 0.0, 0, 0.0, 0);
			}
			else {
				AurPostString("(AWD)ERROR: Should not be here.", 5, 5, 60.0);
			}
		}
	}
}