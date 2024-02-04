void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	DelayCommand(1.0, AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("WP_PC_Chano", 0), 0, 1.0, 30.0)));
}