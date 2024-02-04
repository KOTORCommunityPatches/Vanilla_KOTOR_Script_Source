void main() {
	object oVisquis = GetObjectByTag("Visquis", 0);
	AssignCommand(oVisquis, ClearAllActions());
	AssignCommand(oVisquis, ActionMoveToObject(GetObjectByTag("WP_VIS_END_1", 0), 0, 1.0));
	DelayCommand(0.5, DestroyObject(GetObjectByTag("gas1", 0), 0.0, 0, 0.0, 0));
	DelayCommand(1.0, DestroyObject(GetObjectByTag("gas2", 0), 0.0, 0, 0.0, 0));
	DelayCommand(1.5, DestroyObject(GetObjectByTag("gas3", 0), 0.0, 0, 0.0, 0));
	DelayCommand(2.0, DestroyObject(GetObjectByTag("gas4", 0), 0.0, 0, 0.0, 0));
}