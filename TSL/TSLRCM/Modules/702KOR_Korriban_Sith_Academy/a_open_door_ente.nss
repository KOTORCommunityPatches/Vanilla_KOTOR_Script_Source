void main() {
	object oDoor_enter = GetObjectByTag("door_enter", 0);
	if ((!GetIsObjectValid(oDoor_enter))) {
		return;
	}
	SetLocked(oDoor_enter, 0);
	DelayCommand(0.5, AssignCommand(oDoor_enter, ActionOpenDoor(oDoor_enter)));
	SetLocalBoolean(GetObjectByTag("tr_enter", 0), 41, 1);
	CreatureFlourishWeapon(GetFirstPC());
}