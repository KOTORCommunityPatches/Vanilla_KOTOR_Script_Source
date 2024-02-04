void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((nParam1 == 1)) {
		SetGlobalNumber("103PER_Voice_Frag_1", nParam2);
	}
	if ((nParam1 == 2)) {
		SetGlobalNumber("103PER_Voice_Frag_2", nParam2);
	}
	if ((nParam1 == 3)) {
		SetGlobalNumber("103PER_Voice_Frag_3", nParam2);
	}
	if ((nParam1 == 4)) {
		SetGlobalNumber("103PER_Voice_Frag_1", nParam2);
		SetGlobalNumber("103PER_Voice_Frag_2", nParam2);
		SetGlobalNumber("103PER_Voice_Frag_3", nParam2);
		SetLocalBoolean(GetObjectByTag("Drocon", 0), 31, 1);
	}
}