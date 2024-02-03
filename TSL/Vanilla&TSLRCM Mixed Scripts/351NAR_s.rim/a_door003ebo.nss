void main() {
	object oTO_003EBO = GetObjectByTag("TO_003EBO", 0);
	SetLocked(oTO_003EBO, 0);
	DelayCommand(1.0, AssignCommand(oTO_003EBO, ActionOpenDoor(oTO_003EBO)));
}

