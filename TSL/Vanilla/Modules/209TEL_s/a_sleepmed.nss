void main() {
	object oPC = GetFirstPC();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_sleep_pc", 0), 1));
	AssignCommand(oPC, ActionPlayAnimation(35, 1.0, (-1.0)));
}

