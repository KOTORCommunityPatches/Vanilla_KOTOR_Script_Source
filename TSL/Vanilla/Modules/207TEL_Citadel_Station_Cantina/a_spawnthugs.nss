void main() {
	SetLocalBoolean(GetObjectByTag("tr_doboambush", 0), 35, 1);
	CreateObject(1, "g_201thug001", GetLocation(GetObjectByTag("wp_thug01", 0)), 0);
	CreateObject(1, "g_201thug", GetLocation(GetObjectByTag("wp_thug02", 0)), 0);
}
