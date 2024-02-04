void main() {
	DestroyObject(GetObjectByTag("T3Smoke", 0), 0.0, 0, 0.0, 0);
	CreateObject(1, "g_droid_mine_006", GetLocation(GetObjectByTag("WP_min_01", 0)), 0);
	CreateObject(1, "g_droid_mine_006", GetLocation(GetObjectByTag("WP_min_02", 0)), 0);
	CreateObject(1, "g_assassindrd004", GetLocation(GetObjectByTag("WP_drd4_01", 0)), 0);
	CreateObject(1, "g_assassindrd003", GetLocation(GetObjectByTag("WP_drd3_01", 0)), 0);
	CreateObject(1, "g_assassindrd002", GetLocation(GetObjectByTag("WP_drd2_01", 0)), 0);
	CreateObject(1, "g_assassindrd002", GetLocation(GetObjectByTag("WP_drd2_02", 0)), 0);
	CreateObject(1, "g_assassindrd005", GetLocation(GetObjectByTag("WP_drd5_01", 0)), 0);
	CreateObject(1, "g_assassindrd005", GetLocation(GetObjectByTag("WP_drd5_02", 0)), 0);
	CreateObject(1, "g_assassindrd005", GetLocation(GetObjectByTag("WP_drd5_03", 0)), 0);
	CreateObject(1, "g_assassindrd005", GetLocation(GetObjectByTag("WP_drd5_04", 0)), 0);
}