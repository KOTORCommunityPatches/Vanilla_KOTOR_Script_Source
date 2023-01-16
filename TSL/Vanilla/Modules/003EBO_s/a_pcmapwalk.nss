void main() {
	object oPC = GetFirstPC();
	ClearAllActions();
	AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("WP_PC_WALK_MAP", 0), 0, 1.0));
}

