void main() {
	object oWP_REPCAPT_BRIDGE = GetObjectByTag("WP_REPCAPT_BRIDGE", 0);
	object oWP_REPNAV = GetObjectByTag("WP_REPNAV", 0);
	object oWP_REPSOLD = GetObjectByTag("WP_REPSOLD", 0);
	object oWP_REPDOC = GetObjectByTag("WP_REPDOC", 0);
	CreateObject(1, "n_repoff002", GetLocation(oWP_REPCAPT_BRIDGE), 0);
	CreateObject(1, "n_navoff", GetLocation(oWP_REPNAV), 0);
	CreateObject(1, "n_repsold", GetLocation(oWP_REPSOLD), 0);
	CreateObject(1, "n_repdoc", GetLocation(oWP_REPDOC), 0);
}

