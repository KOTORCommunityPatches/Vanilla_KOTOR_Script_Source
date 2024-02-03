void main() {
	SwitchPlayerCharacter((-1));
	object oDoorRing = GetObjectByTag("DoorRing", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	AssignCommand(GetFirstPC(), ActionJumpToObject(oDoorRing, 1));
	AssignCommand(oDoorRing, ActionOpenDoor(oDoorRing));
	DelayCommand(0.5, AssignCommand(GetObjectByTag("Visquis", 0), ActionStartConversation(GetFirstPC(), "visquis", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

