void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		AssignCommand(GetObjectByTag("Mira", 0), ActionForceMoveToObject(GetObjectByTag("WP_MIRA_END2_1", 0), 0, 1.0, 30.0));
	}
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("Mira", 0), ActionForceMoveToObject(GetObjectByTag("WP_MIRA_END2_2", 0), 0, 1.0, 30.0));
	}
}

