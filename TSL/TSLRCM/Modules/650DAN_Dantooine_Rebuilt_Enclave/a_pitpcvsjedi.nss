void main() {
	object oPC = GetFirstPC();
	object oWP_KREIA_END_1 = GetWaypointByTag("WP_KREIA_END_1");
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_PC_WALK_3"))));
	AssignCommand(oPC, ActionDoCommand(ActionForceMoveToLocation(GetLocation(oWP_KREIA_END_1), 0, 30.0)));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Vrook", 0), SetFacingPoint(GetPosition(oWP_KREIA_END_1))));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("Kavar", 0), SetFacingPoint(GetPosition(oWP_KREIA_END_1))));
	DelayCommand(1.5, AssignCommand(GetObjectByTag("ZezKaiEll", 0), SetFacingPoint(GetPosition(oWP_KREIA_END_1))));
}