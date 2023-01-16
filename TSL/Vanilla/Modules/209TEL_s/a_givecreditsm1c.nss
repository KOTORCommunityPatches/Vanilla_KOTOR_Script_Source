void main() {
	int nParam1 = GetScriptParameter(1);
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, 37);
	if ((nParam1 == 0)) {
		if (nLocalBool) {
			GiveGoldToCreature(GetFirstPC(), 300);
		}
		else {
			GiveGoldToCreature(GetFirstPC(), 250);
		}
	}
	if ((nParam1 == 1)) {
		if (nLocalBool) {
			GiveGoldToCreature(GetFirstPC(), 350);
		}
		else {
			GiveGoldToCreature(GetFirstPC(), 300);
		}
	}
}

