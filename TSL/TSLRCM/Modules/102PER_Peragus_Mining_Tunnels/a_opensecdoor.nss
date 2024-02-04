void main() {
	object oSecDoor = GetObjectByTag("SecDoor", 0);
	object oG_assassindrd010 = CreateObject(1, "g_assassindrd010", GetLocation(GetObjectByTag("WP_DROID_SPAWN", 0)), 0);
	AssignCommand(oG_assassindrd010, ClearAllActions());
	AssignCommand(oG_assassindrd010, ActionMoveToObject(GetObjectByTag("WP_DROID_DOOR", 0), 0, 1.0));
	AssignCommand(oG_assassindrd010, ActionPlayAnimation(107, 1.0, 0.0));
	SetLocked(oSecDoor, 0);
	DelayCommand(4.0, ActionOpenDoor(oSecDoor));
	DelayCommand(10.0, AssignCommand(oG_assassindrd010, ChangeToStandardFaction(oG_assassindrd010, 1)));
}