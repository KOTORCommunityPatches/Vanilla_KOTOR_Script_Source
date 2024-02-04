void main() {
	object oPC = GetFirstPC();
	object oKreia = GetObjectByTag("Kreia", 0);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("WP_PC_WALK_2", 0), 0, 1.0, 30.0));
	AssignCommand(oPC, ActionDoCommand(ActionForceMoveToObject(GetObjectByTag("WP_PC_WALK_3", 0), 0, 1.0, 30.0)));
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oKreia, ActionWait(3.0));
	AssignCommand(oKreia, ActionDoCommand(ActionForceMoveToObject(GetObjectByTag("WP_PC_WALK_2", 0), 0, 1.0, 30.0)));
}