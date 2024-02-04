int StartingConditional() {
	object oMedClosetDoor = GetObjectByTag("MedClosetDoor", 0);
	if (((!GetIsObjectValid(oMedClosetDoor)) && (!GetHasSkill(0, GetPCSpeaker())))) {
		return 0;
	}
	if (GetIsOpen(oMedClosetDoor)) {
		return 0;
	}
	return 1;
}

