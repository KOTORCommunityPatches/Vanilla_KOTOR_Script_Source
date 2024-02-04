void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	switch (nParam2) {
		case 0:
			SetGlobalNumber("403DXN_CannokTrouble", nParam1);
			break;
		case 1:
			DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "PhasePulseConverterAssembly"), 0.0, 0, 0.0, 0);
			DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "PhasePulseConverterCore"), 0.0, 0, 0.0, 0);
			DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "PhasePulseConverterPS"), 0.0, 0, 0.0, 0);
			break;
	}
}

