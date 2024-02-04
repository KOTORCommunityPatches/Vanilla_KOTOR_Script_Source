void main() {
	int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
	if ((nGlobal == 1)) {
		int int3 = GetGlobalNumber("106PER_Droid_Ambush");
		if ((int3 == 0)) {
			SetEncounterActive(1, OBJECT_SELF);
			SetGlobalNumber("106PER_Droid_Ambush", 1);
		}
	}
}