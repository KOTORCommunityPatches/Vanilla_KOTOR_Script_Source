void main() {
	if ((GetGlobalNumber("303NAR_Hanharr_Side") == 0)) {
		CreateObject(1, "p_mira", GetLocation(GetObjectByTag("WP_MIRA_END2_0", 0)), 0);
	}
	if ((GetGlobalNumber("303NAR_Hanharr_Side") == 1)) {
		CreateObject(1, "p_hanharr", GetLocation(GetObjectByTag("WP_HAN_END2_0", 0)), 0);
	}
}

