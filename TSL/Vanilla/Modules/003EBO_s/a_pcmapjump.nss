void main() {
	object oPC = GetFirstPC();
	ClearAllActions();
	AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_PC_WALK_MAP", 0), 0));
	SetLockOrientationInDialog(oPC, 1);
}

