void main() {
	object oDoorRing = GetObjectByTag("DoorRing", 0);
	DelayCommand(1.0, AssignCommand(oDoorRing, ActionCloseDoor(oDoorRing)));
	DelayCommand(2.5, SetLocked(oDoorRing, 0));
}

