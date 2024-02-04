void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	if ((nParam1 == 1)) {
		DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "DatapadMineAdm"), 0.0, 0, 0.0, 0);
		SetLocalBoolean(OBJECT_SELF, nParam2, 1);
	}
	if ((nParam1 == 2)) {
		DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "DatapadMineForeman"), 0.0, 0, 0.0, 0);
		SetLocalBoolean(OBJECT_SELF, nParam2, 1);
	}
	if ((nParam1 == 3)) {
		DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "DatapadDockOff"), 0.0, 0, 0.0, 0);
		SetLocalBoolean(OBJECT_SELF, nParam2, 1);
	}
	if ((nParam1 == 4)) {
		DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "DatapadMineCoorta"), 0.0, 0, 0.0, 0);
		SetLocalBoolean(OBJECT_SELF, nParam2, 1);
	}
}