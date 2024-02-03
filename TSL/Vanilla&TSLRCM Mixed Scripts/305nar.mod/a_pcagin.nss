void main() {
	object oDoorRing = GetObjectByTag("DoorRing", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	AssignCommand(GetFirstPC(), ActionJumpToObject(oDoorRing, 1));
	AssignCommand(oDoorRing, ActionOpenDoor(oDoorRing));
}

