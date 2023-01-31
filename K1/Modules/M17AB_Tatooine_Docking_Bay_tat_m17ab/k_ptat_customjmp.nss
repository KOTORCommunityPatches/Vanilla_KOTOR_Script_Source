
void main() {
	
	object oWP = GetWaypointByTag("tat17_customwalk");
	
	ClearAllActions();
	ActionJumpToObject(oWP);
}