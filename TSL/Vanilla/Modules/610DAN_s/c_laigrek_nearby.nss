int StartingConditional() {
	int int1 = 0;
	location location1 = GetLocation(OBJECT_SELF);
	object oShapeObject = GetFirstObjectInShape(2, 20.0, location1, 0, 1, [0.0,0.0,0.0]);
	int int2 = 0;
	while (GetIsObjectValid(oShapeObject)) {
		if ((FindSubString(GetTag(oShapeObject), "laigrek") >= 0)) {
			int1 = 1;
			break;
		}
		oShapeObject = GetNextObjectInShape(2, 20.0, location1, 1, 1, [0.0,0.0,0.0]);
		(int2++);
	}
	return int1;
}

