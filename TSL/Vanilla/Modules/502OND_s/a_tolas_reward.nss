void main() {
	if (GetLocalBoolean(OBJECT_SELF, 52)) {
		GiveGoldToCreature(GetFirstPC(), 3000);
	}
	else {
		GiveGoldToCreature(GetFirstPC(), 2000);
	}
	SetLocalBoolean(OBJECT_SELF, 53, 1);
}

