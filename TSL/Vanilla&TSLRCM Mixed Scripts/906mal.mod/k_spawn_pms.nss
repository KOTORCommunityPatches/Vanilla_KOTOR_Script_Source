struct structtype1 {
	float float1;
	float float3;
};

void main() {
	if (GetLocalBoolean(OBJECT_SELF, 35)) {
		return;
	}
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	if ((oEntering != oPC)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 35, 1);
	if (GetLoadFromSaveGame()) {
		return;
	}
	SpawnAvailableNPC(4, Location(Vector(131.83772, (-36.30788), 3.0), 356.7878));
	SpawnAvailableNPC(11, Location(Vector(131.83772, (-36.30788), 3.0), 356.7878));
	SpawnAvailableNPC(7, Location(Vector(145.97577, (-52.29044), 3.0), 176.7878));
	SpawnAvailableNPC(9, Location(Vector(131.34074, (-68.54469), 3.0), 358.8448));
	SpawnAvailableNPC(2, Location(Vector(145.95422, (-68.32268), 3.0), 176.7878));
}

