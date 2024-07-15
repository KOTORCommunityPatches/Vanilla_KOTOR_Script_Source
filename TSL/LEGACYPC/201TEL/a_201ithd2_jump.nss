void main() {
	object oPC = GetFirstPC();
	object object3 = GetNextPC();
	object object5 = GetNextPC();
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_pc_jump1", 0), 1));
	AssignCommand(object3, ClearAllActions());
	AssignCommand(object3, ActionJumpToObject(GetObjectByTag("wp_pc_jump2", 0), 1));
	AssignCommand(object5, ClearAllActions());
	AssignCommand(object5, ActionJumpToObject(GetObjectByTag("wp_pc_jump3", 0), 1));
}

