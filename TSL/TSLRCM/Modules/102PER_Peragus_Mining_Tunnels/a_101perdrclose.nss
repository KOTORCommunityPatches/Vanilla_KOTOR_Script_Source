void main() {
	object oDoor_To_101PER = GetObjectByTag("Door_To_101PER", 0);
	DelayCommand(1.0, AssignCommand(oDoor_To_101PER, ActionCloseDoor(oDoor_To_101PER)));
	DelayCommand(1.5, SetLocked(oDoor_To_101PER, 1));
}