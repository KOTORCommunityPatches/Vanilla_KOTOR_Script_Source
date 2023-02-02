void main() {
	object oDoor_puzzle = GetObjectByTag("door_puzzle", 0);
	SetLocked(oDoor_puzzle, 0);
	DelayCommand(0.5, AssignCommand(oDoor_puzzle, ActionOpenDoor(oDoor_puzzle)));
}
