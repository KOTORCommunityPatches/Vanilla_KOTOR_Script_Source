void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_carthpc_1", 0), 0, 1.0));
		AssignCommand(GetObjectByTag("221_grenn", 0), ActionMoveToObject(GetObjectByTag("wp_grenn_1", 0), 0, 1.0));
	}
	else {
		if ((nParam1 == 2)) {
			AssignCommand(GetObjectByTag("221_grenn", 0), ActionMoveToObject(GetObjectByTag("wp_grenn_2", 0), 0, 1.0));
			AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_carthpc_2", 0), 0, 1.0));
		}
	}
}
