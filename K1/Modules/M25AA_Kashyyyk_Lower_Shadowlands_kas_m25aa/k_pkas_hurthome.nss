void main() {
	
	object oExiting = GetExitingObject();
	object oHome = GetWaypointByTag("kas25_wp_hurthome");
	
	if (GetTag(oExiting) == "kas25_hurt_01")
		{
			CancelCombat(oExiting);
			AssignCommand(oExiting, ClearAllActions());
			AssignCommand(oExiting, ActionMoveToObject(oHome));
			AssignCommand(oExiting, ActionDoCommand(SetCommandable(TRUE, OBJECT_SELF)));
			AssignCommand(oExiting, SetCommandable(FALSE, OBJECT_SELF));
		}
}
