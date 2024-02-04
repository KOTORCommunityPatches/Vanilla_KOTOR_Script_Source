void main() {
	object oPC = GetFirstPC();
	object oWP_KREIA_JEDI_JUMP;
	AssignCommand(oPC, ClearAllActions());
	switch (GetScriptParameter(1)) {
		case 0:
			oWP_KREIA_JEDI_JUMP = GetWaypointByTag("WP_PC_WALK_1");
			AssignCommand(oPC, ActionMoveToLocation(GetLocation(oWP_KREIA_JEDI_JUMP), 0));
			break;
		case 1:
			oWP_KREIA_JEDI_JUMP = GetObjectByTag("WP_PC_WALK_2", 0);
			AssignCommand(oPC, ActionMoveToLocation(GetLocation(oWP_KREIA_JEDI_JUMP), 0));
			break;
		case 2:
			oWP_KREIA_JEDI_JUMP = GetObjectByTag("WP_PC_WALK_3", 0);
			AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_PC_WALK_2", 0), 1));
			AssignCommand(oPC, ActionMoveToLocation(GetLocation(oWP_KREIA_JEDI_JUMP), 0));
			break;
		case 3:
			oWP_KREIA_JEDI_JUMP = GetWaypointByTag("WP_PC_WALK_4");
			AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("WP_PC_WALK_3", 0), 1));
			DelayCommand(2.5, AssignCommand(oPC, ActionMoveToLocation(GetLocation(oWP_KREIA_JEDI_JUMP), 0)));
			break;
		case 4:
			oWP_KREIA_JEDI_JUMP = GetWaypointByTag("WP_KREIA_JEDI_JUMP");
			AssignCommand(oPC, ActionMoveToObject(oWP_KREIA_JEDI_JUMP, 0, 5.0));
			break;
	}
}