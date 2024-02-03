void main() {
	int nParam1 = GetScriptParameter(1);
	int nLocal = GetLocalNumber(OBJECT_SELF, 4);
	int int5 = GetLocalNumber(OBJECT_SELF, 5);
	if ((nParam1 == 0)) {
		SetLocalBoolean(OBJECT_SELF, 49, 1);
	}
	if ((nParam1 == 1)) {
		SetLocalNumber(OBJECT_SELF, 4, 1);
		nLocal = 1;
	}
	SetLocalNumber(OBJECT_SELF, 5, (int5++));
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	if ((nParam1 == 3)) {
		PlayPazaak(3, "k_pato_donepzk", 0, 0, OBJECT_INVALID);
	}
	PlayPazaak(nLocal, "k_pato_donepzk", (nLocal * 250), 0, OBJECT_INVALID);
}

