void main() {
	int nParam2 = GetScriptParameter(2);
	int nLocal = GetLocalNumber(OBJECT_SELF, nParam2);
	if ((nLocal == 0)) {
		SetLocalNumber(OBJECT_SELF, nParam2, Random(GetScriptParameter(1)));
	}
}

