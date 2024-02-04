void main() {
	object oMainDoor_103PER = GetObjectByTag("MainDoor_103PER", 0);
	SetLocked(oMainDoor_103PER, 0);
	DelayCommand(1.0, AssignCommand(oMainDoor_103PER, ActionOpenDoor(oMainDoor_103PER)));
}