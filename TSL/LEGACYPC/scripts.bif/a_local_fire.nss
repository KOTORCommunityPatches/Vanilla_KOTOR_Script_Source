void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			if ((!GetGlobalBoolean("000_Master_Kreia"))) {
				AurPostString("exiting a_local_fire, not time yet", 5, 16, 20.0);
				return;
			}
			break;
		case 2:
			break;
		default:
			AurPostString("ERROR: with jedi master killing/learning script", 5, 15, 20.0);
			break;
	}
	AurPostString("Executing local script: k_post_master", 5, 15, 20.0);
	ExecuteScript("k_post_master", GetFirstPC(), 0xFFFFFFFF);
}

