void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 90)) {
		DestroyObject(GetObjectByTag("g_i_asensors", 0), 0.0, 0, 0.0, 0);
		ActionTakeItem(GetObjectByTag("g_i_asensors", 0), GetFirstPC());
		if (((!GetLocalBoolean(OBJECT_SELF, 52)) && (!GetLocalBoolean(OBJECT_SELF, 53)))) {
			GiveGoldToCreature(GetFirstPC(), 3000);
		}
		if (GetLocalBoolean(OBJECT_SELF, 53)) {
			GiveGoldToCreature(GetFirstPC(), 5000);
		}
		else {
			if (GetLocalBoolean(OBJECT_SELF, 52)) {
				GiveGoldToCreature(GetFirstPC(), 4000);
			}
		}
	}
}

