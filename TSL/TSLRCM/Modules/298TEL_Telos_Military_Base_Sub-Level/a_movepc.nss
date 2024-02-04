void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(1.5, AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("WP_PC_1", 0), 0, 1.0, 30.0)));
}