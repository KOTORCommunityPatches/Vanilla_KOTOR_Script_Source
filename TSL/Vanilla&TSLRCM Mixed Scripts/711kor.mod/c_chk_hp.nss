int StartingConditional() {
	object oG_darkpc = GetObjectByTag("g_darkpc", 0);
	if ((GetIsObjectValid(oG_darkpc) && GetLocalBoolean(oG_darkpc, 42))) {
		DestroyObject(oG_darkpc, 0.0, 0, 0.0, 0);
		return 1;
	}
	else {
		return 0;
	}
}

