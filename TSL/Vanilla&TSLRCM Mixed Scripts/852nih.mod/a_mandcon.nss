struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	location location1 = Location(Vector((-149.67337), 38.39992, 12.337), 0.0);
	location location3 = Location(Vector((-162.92885), 40.54339, 12.337), 0.0);
	switch (nParam1) {
		case 0:
			SpawnAvailableNPC(2, location1);
			break;
		case 1:
			AssignCommand(GetObjectByTag("Mand", 0), ActionMoveToLocation(location3, 1));
			break;
	}
}

