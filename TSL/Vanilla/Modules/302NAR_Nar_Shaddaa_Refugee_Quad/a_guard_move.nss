void main() {
	int nParam1 = GetScriptParameter(1);
	object oWP_personalguard2;
	object oPersonal_guard2;
	if ((nParam1 == 1)) {
		oWP_personalguard2 = GetObjectByTag("WP_personalguard1", 0);
		oPersonal_guard2 = GetObjectByTag("personal_guard1", 0);
	}
	else {
		if ((nParam1 == 2)) {
			oWP_personalguard2 = GetObjectByTag("WP_personalguard2", 0);
			oPersonal_guard2 = GetObjectByTag("personal_guard2", 0);
		}
		else {
			AurPostString("ERROR No Guard Parameter.", 5, 5, 60.0);
		}
	}
	if (GetIsObjectValid(oPersonal_guard2)) {
		if (GetIsObjectValid(oWP_personalguard2)) {
			object oOverseer = GetObjectByTag("overseer", 0);
			vector vPosition = GetPosition(oOverseer);
			vector struct4 = GetPosition(oPersonal_guard2);
			AssignCommand(oPersonal_guard2, ClearAllActions());
			AssignCommand(oPersonal_guard2, ActionDoCommand(ActionForceMoveToObject(oWP_personalguard2, 1, 1.0, 30.0)));
			AssignCommand(oPersonal_guard2, ActionDoCommand(SetFacingPoint(vPosition)));
			AssignCommand(oOverseer, ActionDoCommand(SetFacingPoint(struct4)));
		}
	}
}
