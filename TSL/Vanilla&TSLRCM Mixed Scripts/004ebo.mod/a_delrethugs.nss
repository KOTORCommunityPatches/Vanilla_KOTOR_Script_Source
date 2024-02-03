void main() {
	object oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
	while (GetIsObjectValid(oAreaObject)) {
		if ((GetStringLeft(GetTag(oAreaObject), 2) == "RE")) {
			DestroyObject(oAreaObject, 0.0, 0, 0.0, 0);
		}
		oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
	}
}

