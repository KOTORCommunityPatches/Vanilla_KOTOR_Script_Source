void main() {
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		TakeGoldFromCreature(200, GetFirstPC(), 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 41)) {
		TakeGoldFromCreature(100, GetFirstPC(), 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 42)) {
		TakeGoldFromCreature(50, GetFirstPC(), 0);
	}
}