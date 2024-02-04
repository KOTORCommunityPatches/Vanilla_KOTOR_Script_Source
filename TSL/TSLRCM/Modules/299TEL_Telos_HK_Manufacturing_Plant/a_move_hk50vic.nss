void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("WP_PC_VIC", 0), 0, 1.0, 30.0));
}