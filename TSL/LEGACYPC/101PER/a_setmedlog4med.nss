void main() {
	object oWP_MEDOFF_RUN = GetWaypointByTag("WP_MEDOFF_RUN");
	AssignCommand(OBJECT_SELF, ClearAllActions());
	DelayCommand(1.0, AssignCommand(OBJECT_SELF, ActionMoveToObject(oWP_MEDOFF_RUN, 1, 1.0)));
	SetGlobalNumber("101PER_Med_Log", 4);
}

