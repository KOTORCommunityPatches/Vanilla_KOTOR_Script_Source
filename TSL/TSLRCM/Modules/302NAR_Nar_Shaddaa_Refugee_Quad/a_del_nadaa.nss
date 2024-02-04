void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oAdana = GetObjectByTag("adana", 0);
		if (GetIsObjectValid(oAdana)) {
			DestroyObject(oAdana, 0.0, 0, 0.0, 0);
		}
		object oNadaa = GetObjectByTag("nadaa", 0);
		if (GetIsObjectValid(oNadaa)) {
			object oWP_nadaa = GetObjectByTag("WP_nadaa", 0);
			if (GetIsObjectValid(oWP_nadaa)) {
				AssignCommand(oNadaa, ClearAllActions());
				AssignCommand(oNadaa, ActionForceMoveToObject(oWP_nadaa, 1, 1.0, 30.0));
			}
		}
	}
	else {
		if ((nParam1 == 2)) {
			object object7 = GetObjectByTag("nadaa", 0);
			if (GetIsObjectValid(object7)) {
				DelayCommand(1.0, DestroyObject(object7, 0.0, 0, 0.0, 0));
			}
		}
		else {
			AurPostString("ERROR: Invalid parameter for Nadaa quest.", 15, 15, 10.0);
		}
	}
}