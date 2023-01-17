void main() {
	object o304Enter = GetObjectByTag("304Enter", 0);
	DelayCommand(1.0, AssignCommand(o304Enter, ActionCloseDoor(o304Enter)));
	DelayCommand(1.5, SetLocked(o304Enter, 1));
}

