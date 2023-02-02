void main() {
	int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
	if ((nGlobal == 1)) {
		int int3 = GetGlobalNumber("101PER_Spawn_Ass3");
		if ((int3 == 0)) {
			SetEncounterActive(1, OBJECT_SELF);
			SetGlobalNumber("101PER_Spawn_Ass3", 1);
		}
	}
}
