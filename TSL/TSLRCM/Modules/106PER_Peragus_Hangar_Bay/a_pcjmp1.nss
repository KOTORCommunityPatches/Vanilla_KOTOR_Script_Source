void main() {
	object oWP_NPC2_JUMP = GetObjectByTag("WP_PC_JUMP", 0);
	AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(oWP_NPC2_JUMP)));
	object object4 = GetNextPC();
	object object6 = GetNextPC();
	if (GetIsObjectValid(object4)) {
		AurPostString("Setting NPC 1", 5, 7, 10.0);
		AssignCommand(object4, ClearAllActions());
		oWP_NPC2_JUMP = GetObjectByTag("WP_NPC1_JUMP", 0);
		AssignCommand(object4, ActionJumpToLocation(GetLocation(oWP_NPC2_JUMP)));
	}
	if (GetIsObjectValid(object6)) {
		AurPostString("Setting NPC 2", 5, 8, 10.0);
		AssignCommand(object6, ClearAllActions());
		oWP_NPC2_JUMP = GetObjectByTag("WP_NPC2_JUMP", 0);
		AssignCommand(object6, ActionJumpToLocation(GetLocation(oWP_NPC2_JUMP)));
	}
}