void main() {
	object oHatch_105PERDoor = GetObjectByTag("Hatch_105PERDoor", 0);
	object o102PERDoor = GetObjectByTag("102PERDoor", 0);
	AssignCommand(o102PERDoor, ActionCloseDoor(o102PERDoor));
	SetLocked(o102PERDoor, 1);
	SetLocked(oHatch_105PERDoor, 0);
	AssignCommand(oHatch_105PERDoor, ActionOpenDoor(oHatch_105PERDoor));
	SoundObjectPlay(GetObjectByTag("101pervoice008", 0));
	int nGlobal = GetGlobalNumber("101PER_Kreia_Spawn");
	if ((nGlobal >= 4)) {
		return;
	}
	SetGlobalNumber("101PER_Kreia_Spawn", 4);
	object oKreia = GetObjectByTag("kreia", 0);
	if (GetIsXBox()) {
		DelayCommand(0.1, AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "101Kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	else {
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
		AssignCommand(oKreia, ActionStartConversation(GetFirstPC(), "101Kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}