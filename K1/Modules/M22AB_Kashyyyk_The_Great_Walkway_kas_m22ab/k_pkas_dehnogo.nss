void main() {
	
	object oExit = GetWaypointByTag("kas22ab_exit");
	object oGuard1 = GetObjectByTag("kas22_czguard_01", 0);
	object oGuard2 = GetObjectByTag("kas22_czguard_02", 0);
	
	ClearAllActions();
	
	AssignCommand(oGuard1, ClearAllActions());
	AssignCommand(oGuard1, ActionMoveToObject(oExit, TRUE));
	AssignCommand(oGuard1, ActionDoCommand(DestroyObject(OBJECT_SELF)));
	AssignCommand(oGuard1, SetCommandable(FALSE, OBJECT_SELF));
	
	AssignCommand(oGuard2, ClearAllActions());
	AssignCommand(oGuard2, ActionMoveToObject(oExit, TRUE));
	AssignCommand(oGuard2, ActionDoCommand(DestroyObject(OBJECT_SELF)));
	AssignCommand(oGuard2, SetCommandable(FALSE, OBJECT_SELF));
	
	ActionMoveToObject(oExit, TRUE);
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}
