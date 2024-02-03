struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oAtton = GetObjectByTag("Atton", 0);
	object oDisciple = GetObjectByTag("Disciple", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AssignCommand(oAtton, ActionMoveToLocation(Location(Vector(0.71222, 74.99408, 3.0), 91.40644), 0));
			break;
		case 2:
			CreatureFlourishWeapon(oAtton);
			break;
		case 3:
			SetLightsaberPowered(oAtton, 1, 1, 1);
			break;
		case 4:
			RemoveAvailableNPC(11);
			RemoveAvailableNPC(0);
			AssignCommand(oAtton, ActionMoveToObject(oDisciple, 0, 1.0));
			break;
		case 5:
			StartNewModule("902MAL", "K_LAST_LOCATION", "", "", "", "", "", "");
			break;
	}
}

