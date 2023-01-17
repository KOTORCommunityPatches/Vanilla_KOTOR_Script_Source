void main() {
	int nGlobal = GetGlobalNumber("101PER_Sion_Arrives");
	if ((nGlobal == 1)) {
		SetEncounterActive(1, OBJECT_SELF);
	}
}

