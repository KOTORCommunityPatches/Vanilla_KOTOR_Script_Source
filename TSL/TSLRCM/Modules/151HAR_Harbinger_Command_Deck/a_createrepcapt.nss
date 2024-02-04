void main() {
	object oWP_REPCAPT = GetObjectByTag("WP_REPCAPT", 0);
	object oWP_REPGEN = GetObjectByTag("WP_REPGEN", 0);
	object oWP_CARTH = GetObjectByTag("WP_CARTH", 0);
	object oWP_HK50 = GetObjectByTag("WP_HK50", 0);
	if ((GetGlobalNumber("101PER_Revan_End") == 0)) {
		if ((!GetIsObjectValid(GetObjectByTag("carth", 0)))) {
			CreateObject(1, "n_carth001", GetLocation(oWP_CARTH), 0);
		}
	}
	else {
		if ((GetGlobalNumber("101PER_Revan_End") == 1)) {
			if ((!GetIsObjectValid(GetObjectByTag("repgen", 0)))) {
				CreateObject(1, "n_repoff001", GetLocation(oWP_REPGEN), 0);
			}
		}
	}
	if ((!GetIsObjectValid(GetObjectByTag("repcapt", 0)))) {
		CreateObject(1, "n_repoff002", GetLocation(oWP_REPCAPT), 0);
	}
	if ((!GetIsObjectValid(GetObjectByTag("hk50", 0)))) {
		CreateObject(1, "n_hk50", GetLocation(oWP_HK50), 0);
	}
}