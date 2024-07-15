void main() {
	object o001EboDr1 = GetObjectByTag("001EboDr1", 0);
	SetLocked(o001EboDr1, 0);
	DelayCommand(1.0, AssignCommand(o001EboDr1, ActionOpenDoor(o001EboDr1)));
}

