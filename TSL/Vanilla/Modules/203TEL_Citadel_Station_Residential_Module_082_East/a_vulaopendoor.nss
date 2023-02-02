void main() {
	SetLocked(GetObjectByTag("Exchange", 0), 0);
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Exchange", 0), ActionOpenDoor(GetObjectByTag("Exchange", 0))));
}
