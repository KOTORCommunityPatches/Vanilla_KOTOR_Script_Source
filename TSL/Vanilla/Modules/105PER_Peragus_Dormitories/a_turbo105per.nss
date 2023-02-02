void main() {
	object oDoor_to_101PER = GetObjectByTag("Door_to_101PER", 0);
	SetLocked(oDoor_to_101PER, 0);
	DelayCommand(1.0, AssignCommand(oDoor_to_101PER, ActionOpenDoor(oDoor_to_101PER)));
}
