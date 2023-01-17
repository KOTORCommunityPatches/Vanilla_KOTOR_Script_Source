void main() {
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		SetGlobalNumber("301NAR_Droid_Quest", 3);
		TakeGoldFromCreature(250, GetFirstPC(), 0);
		ModifyInfluence(8, (-1));
		CreateItemOnObject("phasepulseps", GetFirstPC(), 1, 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 41)) {
		SetGlobalNumber("301NAR_Droid_Quest", 3);
		TakeGoldFromCreature(150, GetFirstPC(), 0);
		ModifyInfluence(8, (-1));
		CreateItemOnObject("phasepulseps", GetFirstPC(), 1, 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 42)) {
		SetGlobalNumber("301NAR_Droid_Quest", 3);
		TakeGoldFromCreature(100, GetFirstPC(), 0);
		ModifyInfluence(8, (-1));
		CreateItemOnObject("phasepulseps", GetFirstPC(), 1, 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 43)) {
		SetGlobalNumber("301NAR_Droid_Quest", 4);
		TakeGoldFromCreature(500, GetFirstPC(), 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 44)) {
		SetGlobalNumber("301NAR_Droid_Quest", 4);
		TakeGoldFromCreature(300, GetFirstPC(), 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 45)) {
		SetGlobalNumber("301NAR_Droid_Quest", 4);
		TakeGoldFromCreature(150, GetFirstPC(), 0);
	}
}

