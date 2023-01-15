void main() {
	object oMechanic = GetObjectByTag("mechanic", 0);
	if (GetIsObjectValid(oMechanic)) {
		int nParam1 = GetScriptParameter(1);
		if ((nParam1 == 0)) {
			location location1 = GetLocation(GetObjectByTag("wp_question", 0));
			AssignCommand(oMechanic, ClearAllActions());
			AssignCommand(oMechanic, ActionForceMoveToLocation(location1, 1, 30.0));
		}
		else {
			if ((nParam1 == 1)) {
				location location3 = GetLocation(GetObjectByTag("wp_mech_home", 0));
				AssignCommand(oMechanic, ClearAllActions());
				AssignCommand(oMechanic, ActionForceMoveToLocation(location3, 0, 30.0));
			}
		}
	}
}

