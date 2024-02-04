void main() {
	int nParam1 = GetScriptParameter(1);
	int nLocal;
	switch (nParam1) {
		case 0:
			nLocal = GetLocalNumber(OBJECT_SELF, 12);
			GiveXPToCreature(GetFirstPC(), 250);
			SetLocalNumber(OBJECT_SELF, 12, (nLocal + 1));
			break;
	}
}