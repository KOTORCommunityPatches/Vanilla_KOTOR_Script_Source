void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		if ((GetGlobalNumber("702KOR_Sion") >= 3)) {
			if ((GetLocalBoolean(OBJECT_SELF, 34) == 0)) {
				SetLocalBoolean(OBJECT_SELF, 34, 1);
				object oKorribanTempleDoor = GetObjectByTag("KorribanTempleDoor", 0);
				ActionCloseDoor(oKorribanTempleDoor);
				ActionLockObject(oKorribanTempleDoor);
			}
		}
	}
}