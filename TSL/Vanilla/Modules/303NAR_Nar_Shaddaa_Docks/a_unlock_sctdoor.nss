void main() {
	object oFlophouse_Secret = GetObjectByTag("Flophouse_Secret", 0);
	DelayCommand(0.5, SetLocked(oFlophouse_Secret, 0));
	DelayCommand(0.5, AssignCommand(oFlophouse_Secret, ActionOpenDoor(oFlophouse_Secret)));
}
