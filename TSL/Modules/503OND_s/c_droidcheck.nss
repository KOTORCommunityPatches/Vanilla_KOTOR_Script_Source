int StartingConditional() {
	object oT3m4 = GetObjectByTag("t3m4", 0);
	if ((GetIsObjectValid(oT3m4) && (!GetLocalBoolean(OBJECT_SELF, 41)))) {
		SetLocalBoolean(OBJECT_SELF, 41, 1);
		return 1;
	}
	return 0;
}

