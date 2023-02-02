void main() {
	IncrementGlobalNumber("800DRO_Count_01", 1);
	int nGlobal = GetGlobalNumber("800DRO_Count_01");
	if ((nGlobal == 8)) {
		nGlobal = 0;
		SetGlobalNumber("800DRO_Count_01", 0);
	}
	if ((GetGlobalNumber("800DRO_Count_02") == 1)) {
		SetGlobalNumber("800DRO_Count_02", 0);
	}
	switch (nGlobal) {
		case 0:
			ActionBarkString(49173);
			ExecuteScript("k_def_death01", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 1:
			ActionBarkString(49174);
			ExecuteScript("k_def_death01", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 2:
			ActionBarkString(49175);
			ExecuteScript("k_def_death01", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 3:
			ActionBarkString(49176);
			ExecuteScript("k_def_death01", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 4:
			ActionBarkString(49177);
			ExecuteScript("k_def_death01", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 5:
			ActionBarkString(49178);
			ExecuteScript("k_def_death01", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 6:
			ActionBarkString(49179);
			ExecuteScript("k_def_death01", OBJECT_SELF, 0xFFFFFFFF);
			break;
		case 7:
			ActionBarkString(49180);
			ExecuteScript("k_def_death01", OBJECT_SELF, 0xFFFFFFFF);
			break;
	}
}
