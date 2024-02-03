int StartingConditional() {
	object oSecDoor = GetObjectByTag("SecDoor", 0);
	int int1 = GetLocked(oSecDoor);
	if ((int1 == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

