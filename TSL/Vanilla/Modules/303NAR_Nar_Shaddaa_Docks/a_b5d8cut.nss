void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_t3m4_1", 0), 0, 1.0));
	}
}
