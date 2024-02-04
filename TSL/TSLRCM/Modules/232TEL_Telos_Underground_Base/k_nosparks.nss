void main() {
	object oWP_SMOKE = GetObjectByTag("WP_SMOKE", 0);
	location location1 = GetLocation(oWP_SMOKE);
	DestroyObject(GetObjectByTag("ESparkLg", 0), 0.0, 0, 0.0, 0);
	CreateObject(64, "BlastSmoke", location1, 0);
}