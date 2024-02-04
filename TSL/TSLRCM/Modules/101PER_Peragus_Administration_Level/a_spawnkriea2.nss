void main() {
	int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
	if ((nGlobal == 0)) {
		return;
	}
	nGlobal = GetGlobalNumber("101PER_Kreia_Spawn");
	if ((nGlobal >= 3)) {
		return;
	}
	SetGlobalNumber("101PER_Kreia_Spawn", 3);
	DestroyObject(GetObjectByTag("kreia", 0), 0.0, 0, 0.0, 0);
	object oWP_KREIA_SPAWN2 = GetObjectByTag("WP_KREIA_SPAWN2", 0);
	location location1 = GetLocation(oWP_KREIA_SPAWN2);
	object oP_kreia = CreateObject(1, "p_kreia", location1, 0);
	if ((!GetIsObjectValid(oP_kreia))) {
		return;
	}
}