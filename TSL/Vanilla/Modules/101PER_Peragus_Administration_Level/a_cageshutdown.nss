void main() {
	object oAttonCage = GetObjectByTag("AttonCage", 0);
	object oAttonCageBlocker = GetObjectByTag("AttonCageBlocker", 0);
	DestroyObject(oAttonCageBlocker, 0.0, 0, 0.0, 0);
	DelayCommand(0.5, AssignCommand(oAttonCage, ActionPlayAnimation(202, 1.0, 0.0)));
	object oWP_ATTON_FREE = GetWaypointByTag("WP_ATTON_FREE");
	DelayCommand(3.0, AssignCommand(OBJECT_SELF, ActionJumpToObject(oWP_ATTON_FREE, 1)));
	SetGlobalNumber("101PER_Talk_Atton", 1);
}
