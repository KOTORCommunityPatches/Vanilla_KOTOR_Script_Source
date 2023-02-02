void main() {
	if (GetLocalBoolean(OBJECT_SELF, 51)) {
		DestroyObject(GetItemPossessedBy(GetFirstPC(), "w_melee_17"), 0.0, 0, 0.0, 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 52)) {
		TakeGoldFromCreature(5000, GetFirstPC(), 0);
	}
	if (GetLocalBoolean(OBJECT_SELF, 53)) {
		DestroyObject(GetItemPossessedBy(GetFirstPC(), "u_l_crys_21x"), 0.0, 0, 0.0, 0);
	}
	SetLocalBoolean(OBJECT_SELF, 51, 0);
	SetLocalBoolean(OBJECT_SELF, 52, 0);
	SetLocalBoolean(OBJECT_SELF, 53, 0);
	int nParam1 = GetScriptParameter(1);
	SetLocalBoolean(OBJECT_SELF, 50, 1);
	switch (nParam1) {
		case 0:
			CreateItemOnObject("w_melee_17", GetFirstPC(), 1, 0);
			SetLocalBoolean(OBJECT_SELF, 51, 1);
			break;
		case 1:
			GiveGoldToCreature(GetFirstPC(), 5000);
			SetLocalBoolean(OBJECT_SELF, 52, 1);
			break;
		case 2:
			CreateItemOnObject("u_l_crys_21x", GetFirstPC(), 1, 0);
			SetLocalBoolean(OBJECT_SELF, 53, 1);
			break;
	}
}
