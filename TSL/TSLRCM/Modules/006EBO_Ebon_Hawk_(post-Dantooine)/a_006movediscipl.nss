void main() {
	int nParam1 = GetScriptParameter(1);
	object oDisciple = GetObjectByTag("Disciple", 0);
	if ((nParam1 == 0)) {
		DelayCommand(0.5, AssignCommand(oDisciple, ActionForceMoveToObject(GetObjectByTag("WP_650END_0", 0), 0, 1.0, 30.0)));
	}
	if ((nParam1 == 1)) {
		DelayCommand(0.5, AssignCommand(oDisciple, ActionForceMoveToObject(GetObjectByTag("WP_650END_1", 0), 0, 1.0, 30.0)));
	}
}