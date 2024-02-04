void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			CreateObject(64, "quest_corpse", GetLocation(GetObjectByTag("WP_corpse_spawn", 0)), 0);
			break;
		default:
			AurPostString("Error with Bith Scientist", 5, 15, 10.0);
			break;
	}
}