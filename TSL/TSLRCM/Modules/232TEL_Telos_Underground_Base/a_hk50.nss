void main() {
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("232_hk501", 0), ActionMoveToObject(GetObjectByTag("wp_hk501_02", 0), 0, 1.0));
		AssignCommand(GetObjectByTag("232_hk502", 0), ActionMoveToObject(GetObjectByTag("wp_hk502_02", 0), 0, 1.0));
	}
}