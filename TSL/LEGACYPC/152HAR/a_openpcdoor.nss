void main() {
	object oPCDoor = GetObjectByTag("PCDoor", 0);
	AssignCommand(GetFirstPC(), ActionOpenDoor(oPCDoor));
}

