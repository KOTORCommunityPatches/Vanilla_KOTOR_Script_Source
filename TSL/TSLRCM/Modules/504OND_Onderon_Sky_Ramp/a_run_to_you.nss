void main() {
	location location1 = GetLocation(GetObjectByTag("wp_first_wave", 0));
	object oShapeObject = GetFirstObjectInShape(4, 15.0, location1, 0, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		if ((GetStandardFaction(oShapeObject) == 1)) {
			AssignCommand(oShapeObject, ActionMoveToObject(GetFirstPC(), 1, 1.0));
		}
		oShapeObject = GetNextObjectInShape(4, 15.0, location1, 0, 1, [0.0,0.0,0.0]);
	}
}