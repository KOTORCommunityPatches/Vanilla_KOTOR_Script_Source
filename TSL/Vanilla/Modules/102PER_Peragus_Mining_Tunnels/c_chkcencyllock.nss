int StartingConditional() {
	object oCenterCylinder = GetObjectByTag("CenterCylinder", 0);
	int int1 = GetLocked(oCenterCylinder);
	if ((int1 == 0)) {
		return 1;
	}
	else {
		return 0;
	}
}
