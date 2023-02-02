void main() {
	object o305Cage = GetObjectByTag("305Cage", 0);
	SetLocked(o305Cage, 0);
	DelayCommand(1.0, AssignCommand(o305Cage, ActionOpenDoor(o305Cage)));
}
