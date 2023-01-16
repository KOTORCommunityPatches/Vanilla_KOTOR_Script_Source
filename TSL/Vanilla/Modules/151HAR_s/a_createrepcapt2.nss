void main() {
	object oWP_REPCAPT_BRIDGE = GetObjectByTag("WP_REPCAPT_BRIDGE", 0);
	object oWP_REPNAV = GetObjectByTag("WP_REPNAV", 0);
	object oWP_REPSOL = GetObjectByTag("WP_REPSOL", 0);
	object oWP_REPDOC = GetObjectByTag("WP_REPDOC", 0);
	if ((!GetIsObjectValid(GetObjectByTag("repcapt", 0)))) {
		CreateObject(1, "n_repoff002", GetLocation(oWP_REPCAPT_BRIDGE), 0);
	}
	if ((!GetIsObjectValid(GetObjectByTag("navoff", 0)))) {
		CreateObject(1, "n_navoff", GetLocation(oWP_REPNAV), 0);
	}
	if ((!GetIsObjectValid(GetObjectByTag("repsold", 0)))) {
		CreateObject(1, "n_repsold001", GetLocation(oWP_REPSOL), 0);
	}
	if ((!GetIsObjectValid(GetObjectByTag("repdoc", 0)))) {
		CreateObject(1, "n_repdoc", GetLocation(oWP_REPDOC), 0);
	}
}

