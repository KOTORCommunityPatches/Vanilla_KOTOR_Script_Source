void main() {
	AurPostString("Play Smoke Animation!", 15, 15, 10.0);
	PlayRoomAnimation("103PERt", 1);
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((!GetIsPC(oEntering))) {
		return;
	}
	StopRumblePattern(8);
	int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
	if ((nGlobal == 0)) {
		return;
	}
	if ((!GetLocalBoolean(OBJECT_SELF, 55))) {
		object object3 = SpawnAvailableNPC(8, GetLocation(GetObjectByTag("WP_T3_DEAD", 0)));
		SetLocalBoolean(OBJECT_SELF, 55, 1);
	}
	object oHK50 = GetObjectByTag("HK50", 0);
	if ((!GetIsObjectValid(oHK50))) {
		return;
	}
	DestroyObject(oHK50, 0.0, 0, 0.0, 0);
	object oSecurityDoor104PER = GetObjectByTag("SecurityDoor104PER", 0);
	SetLocked(oSecurityDoor104PER, 1);
	AssignCommand(oSecurityDoor104PER, ActionCloseDoor(oSecurityDoor104PER));
}
