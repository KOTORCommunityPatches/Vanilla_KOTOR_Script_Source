void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 50)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 50, 1);
	location location1 = GetLocation(GetObjectByTag("wp_se_room", 0));
	object oShapeObject = GetFirstObjectInShape(4, 24.0, location1, 0, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		if (GetLocalBoolean(oShapeObject, 60)) {
			AurPostString("DONE!", 5, 5, 5.0);
			AssignCommand(oShapeObject, ActionMoveToObject(GetObjectByTag("wp_se_target", 0), 1, 1.0));
		}
		oShapeObject = GetNextObjectInShape(4, 24.0, location1, 0, 1, [0.0,0.0,0.0]);
	}
}