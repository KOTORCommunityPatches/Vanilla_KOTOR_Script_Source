void sub2(int intParam1) {
	SetGlobalNumber("kas_MandalorPlot", intParam1);
	return;
}

int sub1() {
	return GetGlobalNumber("kas_MandalorPlot");
}

void main() {
	object oK_pkas_wp_mandal = GetWaypointByTag("k_pkas_wp_mandal");
	object oK_pkas_wp_swoop = GetWaypointByTag("k_pkas_wp_swoop");
	object oK_pkas_wp_swoop2 = GetWaypointByTag("k_pkas_wp_swoop2");
	object oK_pkas_wp_swoop3 = GetWaypointByTag("k_pkas_wp_swoop3");
	location location1 = GetLocation(oK_pkas_wp_mandal);
	location location3 = GetLocation(oK_pkas_wp_swoop);
	location location5 = GetLocation(oK_pkas_wp_swoop2);
	location location7 = GetLocation(oK_pkas_wp_swoop3);
	if ((sub1() == 2)) {
		sub2(3);
		CreateObject(1, "kas25_mandcomm", location1, 0);
		CreateObject(64, "kas25_mandswoop", location3, 0);
		CreateObject(64, "kas25_mandswoop2", location5, 0);
		CreateObject(64, "kas25_mandswoop3", location7, 0);
	}
}
