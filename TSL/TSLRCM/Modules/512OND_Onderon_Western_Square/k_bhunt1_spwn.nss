void main() {
	if ((!GetLocalBoolean(OBJECT_SELF, 40))) {
		location location1 = GetLocation(GetObjectByTag("wp_bh1_spawn", 0));
		CreateObject(1, "npc_bhunter1", location1, 0);
		SetLocalBoolean(OBJECT_SELF, 40, 1);
	}
}