int StartingConditional() {
	object oMedClosetDoor = GetObjectByTag("MedClosetDoor", 0);
	return ((!GetIsOpen(oMedClosetDoor)) && GetHasSkill(0, GetPCSpeaker()));
}