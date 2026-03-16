void main() {
	object oWP_TT32_WALK = GetWaypointByTag("WP_TT32_WALK");
	object oTT32 = GetObjectByTag("TT32", 0);
	AssignCommand(oTT32, ClearAllActions());
	AssignCommand(oTT32, ActionMoveToObject(oWP_TT32_WALK, 0, 1.0));
}

