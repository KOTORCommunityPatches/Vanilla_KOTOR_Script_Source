void main() {
	if ((GetGlobalNumber("301NAR_Red_Eclipse_At") != 0)) {
		int nGlobal = GetGlobalNumber("101PER_Spawn_Ass1");
		if ((nGlobal == 0)) {
			SetEncounterActive(1, OBJECT_SELF);
			SetGlobalNumber("101PER_Spawn_Ass1", 1);
		}
	}
}

