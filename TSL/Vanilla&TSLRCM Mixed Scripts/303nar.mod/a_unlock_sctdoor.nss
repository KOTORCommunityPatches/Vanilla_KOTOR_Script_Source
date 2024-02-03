void main() {
	object oAreaObject = GetFirstObjectInArea(GetArea(OBJECT_SELF), 8);
	while ((oAreaObject != OBJECT_INVALID)) {
		if ((((GetTag(oAreaObject) != "Sealed_Door") && (GetTag(oAreaObject) != "TO_304NAR")) && (GetTag(oAreaObject) != "Door_Warehouse_Inner"))) {
			SetLocked(oAreaObject, 0);
		}
		oAreaObject = GetNextObjectInArea(GetArea(OBJECT_SELF), 8);
	}
}

