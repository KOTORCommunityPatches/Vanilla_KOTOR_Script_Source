void main() {
	int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
	if ((nGlobal == 1)) {
		int int3 = GetGlobalNumber("101PER_Spawn_Ass1");
		if ((int3 == 0)) {
			SetEncounterActive(1, OBJECT_SELF);
			SetGlobalNumber("101PER_Spawn_Ass1", 1);
		}
	}
}

