void main() {
	object oAreaObject = GetFirstObjectInArea(GetArea(OBJECT_SELF), 1);
	while ((oAreaObject != OBJECT_INVALID)) {
		if ((GetTag(oAreaObject) == "HK502")) {
			DestroyObject(oAreaObject, 0.0, 0, 0.0, 0);
		}
		oAreaObject = GetNextObjectInArea(GetArea(OBJECT_SELF), 1);
	}
}