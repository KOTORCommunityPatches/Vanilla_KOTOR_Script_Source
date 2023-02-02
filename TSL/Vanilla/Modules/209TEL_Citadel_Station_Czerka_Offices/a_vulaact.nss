void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ChangeToStandardFaction(GetObjectByTag("Vula", 0), 1);
		ActionPlayAnimation(18, 1.0, (-1.0));
	}
	if ((nParam1 == 2)) {
		object oVula = GetObjectByTag("Vula", 0);
		AssignCommand(oVula, ActionMoveToObject(GetObjectByTag("wp_vula_1", 0), 1, 1.0));
		DelayCommand(3.1, DestroyObject(oVula, 0.0, 0, 0.0, 0));
	}
}
