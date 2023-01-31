void main() {
	
	object oThug01 = GetObjectByTag("tat18_jagithug01", 0);
	object oThug02 = GetObjectByTag("tat18_jagithug02", 0);
	object oWP_Jagi = GetWaypointByTag("tat18_jagimove");
	object oWP_Thug01 = GetWaypointByTag("tat18_thug1move");
	object oWP_Thug02 = GetWaypointByTag("tat18_thug2move");
	
	AssignCommand(oThug01, ActionMoveToObject(oWP_Thug01));
	AssignCommand(oThug02, ActionMoveToObject(oWP_Thug02));
	ActionMoveToObject(oWP_Jagi);
}