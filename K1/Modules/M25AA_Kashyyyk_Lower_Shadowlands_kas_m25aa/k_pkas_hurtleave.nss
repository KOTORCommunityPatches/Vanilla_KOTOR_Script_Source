void main() {
	
	object oExit = GetWaypointByTag("kas25aa_exit");
	
	ActionForceMoveToObject(oExit, TRUE);
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}
