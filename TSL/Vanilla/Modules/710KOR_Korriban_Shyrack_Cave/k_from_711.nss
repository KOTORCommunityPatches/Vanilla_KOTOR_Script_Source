void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oKreia_invis = GetObjectByTag("kreia_invis", 0);
		if ((GetLocalBoolean(oKreia_invis, 55) && (!GetLocalBoolean(oKreia_invis, 56)))) {
			SetLocalBoolean(oKreia_invis, 56, 1);
			object oSealedDoor = GetObjectByTag("SealedDoor", 0);
			AssignCommand(oSealedDoor, ActionCloseDoor(oSealedDoor));
		}
	}
}
