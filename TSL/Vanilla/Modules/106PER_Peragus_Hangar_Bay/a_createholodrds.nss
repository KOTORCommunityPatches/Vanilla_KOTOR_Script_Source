void main() {
	object oWP_DROIDHOLO_1 = GetObjectByTag("WP_DROIDHOLO_1", 0);
	object oWP_DROIDHOLO_2 = GetObjectByTag("WP_DROIDHOLO_2", 0);
	object oWP_DROIDHOLO_3_1 = GetObjectByTag("WP_DROIDHOLO_3_1", 0);
	object oWP_DROIDHOLO_3_2 = GetObjectByTag("WP_DROIDHOLO_3_2", 0);
	CreateObject(1, "holo1", GetLocation(oWP_DROIDHOLO_1), 0);
	CreateObject(1, "holo2", GetLocation(oWP_DROIDHOLO_2), 0);
	CreateObject(1, "holo3", GetLocation(oWP_DROIDHOLO_3_1), 0);
}

