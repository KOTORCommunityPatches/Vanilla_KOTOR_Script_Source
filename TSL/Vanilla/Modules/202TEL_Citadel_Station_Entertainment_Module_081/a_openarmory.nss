void main() {
	object oD_TSFArmory = GetObjectByTag("d_TSFArmory", 0);
	SetLocked(oD_TSFArmory, 0);
	AssignCommand(oD_TSFArmory, ActionOpenDoor(oD_TSFArmory));
}
