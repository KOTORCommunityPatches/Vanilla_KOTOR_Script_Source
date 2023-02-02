int StartingConditional() {
	object oTr_star = GetObjectByTag("tr_star", 0);
	object oTr_port = GetObjectByTag("tr_port", 0);
	if (((GetLocalBoolean(oTr_star, 60) && GetLocalBoolean(oTr_port, 61)) || (GetLocalBoolean(oTr_star, 61) && GetLocalBoolean(oTr_port, 60)))) {
		return 1;
	}
	return 0;
}
