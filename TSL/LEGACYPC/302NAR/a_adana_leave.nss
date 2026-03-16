void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oAdana = GetObjectByTag("adana", 0);
		if (GetIsObjectValid(oAdana)) {
			object oWp_adana_leave = GetObjectByTag("wp_adana_leave", 0);
			if (GetIsObjectValid(oWp_adana_leave)) {
				AssignCommand(oAdana, ClearAllActions());
				AssignCommand(oAdana, ActionForceMoveToObject(oWp_adana_leave, 1, 1.0, 30.0));
			}
		}
	}
	else {
		if ((nParam1 == 2)) {
			object object5 = GetObjectByTag("adana", 0);
			if (GetIsObjectValid(object5)) {
				DelayCommand(1.0, DestroyObject(object5, 0.0, 0, 0.0, 0));
			}
		}
		else {
			AurPostString("ERROR with Adana script parameter!", 15, 15, 10.0);
		}
	}
}

