void main() {
	object oBridge = GetObjectByTag("Bridge", 0);
	AssignCommand(oBridge, ActionCloseDoor(oBridge));
	SetLocked(oBridge, 1);
}
