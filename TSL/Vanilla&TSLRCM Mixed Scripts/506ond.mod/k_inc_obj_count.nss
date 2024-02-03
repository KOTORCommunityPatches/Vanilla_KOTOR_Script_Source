int StartingConditional() {
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int nParam3 = GetScriptParameter(3);
	int int7;
	object object1;
	if ((sParam == "")) {
		object1 = OBJECT_SELF;
	}
	else {
		object1 = GetObjectByTag(sParam, 0);
	}
	if ((!GetIsObjectValid(object1))) {
		object1 = OBJECT_SELF;
	}
	int nType = GetObjectType(object1);
	object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
	if ((nParam2 == 1)) {
		while (GetIsObjectValid(oAreaObject)) {
			if ((GetStringLeft(GetTag(oAreaObject), GetStringLength(sParam)) == sParam)) {
				(int7++);
			}
			oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
		}
	}
	else {
		if ((nParam2 == 2)) {
			while (GetIsObjectValid(oAreaObject)) {
				if ((GetStringRight(GetTag(oAreaObject), GetStringLength(sParam)) == sParam)) {
					(int7++);
				}
				oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
			}
		}
		else {
			if ((nParam2 == 3)) {
				while (GetIsObjectValid(oAreaObject)) {
					if ((FindSubString(GetTag(oAreaObject), sParam) >= 0)) {
						(int7++);
					}
					oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
				}
			}
			else {
				while (GetIsObjectValid(oAreaObject)) {
					if ((GetObjectType(oAreaObject) == nType)) {
						(int7++);
					}
					oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
				}
			}
		}
	}
	if (((nParam3 > 11) && (nParam3 < 29))) {
		if ((nParam2 == 0)) {
			AurPostString(((("Number of object type " + IntToString(nType)) + " = ") + IntToString(int7)), 5, 10, 5.0);
		}
		else {
			AurPostString(((("Number of " + sParam) + " = ") + IntToString(int7)), 5, 10, 5.0);
		}
		SetLocalNumber(object1, nParam3, int7);
	}
	if ((int7 <= nParam1)) {
		return 1;
	}
	return 0;
}

