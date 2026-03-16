void main() {
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

