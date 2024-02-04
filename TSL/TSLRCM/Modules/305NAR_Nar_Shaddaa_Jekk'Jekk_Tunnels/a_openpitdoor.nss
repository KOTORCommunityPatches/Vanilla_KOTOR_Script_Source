void main() {
	object oPitDoor = GetObjectByTag("PitDoor", 0);
	DelayCommand(0.5, SetLocked(oPitDoor, 0));
	DelayCommand(1.0, AssignCommand(oPitDoor, ActionOpenDoor(oPitDoor)));
}