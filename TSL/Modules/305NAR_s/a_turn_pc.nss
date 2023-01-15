void main() {
	DelayCommand(0.5, AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("DoorRing", 0)))));
}

