void main() {
	object oSecurityDoor104PER = GetObjectByTag("SecurityDoor104PER", 0);
	SetLocked(oSecurityDoor104PER, 0);
	DelayCommand(1.0, AssignCommand(oSecurityDoor104PER, ActionOpenDoor(oSecurityDoor104PER)));
}