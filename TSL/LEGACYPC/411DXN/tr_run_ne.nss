void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((!GetLocalBoolean(GetObjectByTag("tr_reinforce_east", 0), 40))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 50)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 50, 1);
	AurPostString("NE Reinforcements running to you", 5, 5, 5.0);
	location location1 = GetLocation(GetObjectByTag("wp_ne_room", 0));
	object oShapeObject = GetFirstObjectInShape(4, 24.0, location1, 0, 1, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		AssignCommand(oShapeObject, ActionMoveToObject(GetObjectByTag("wp_ne_target", 0), 1, 1.0));
		oShapeObject = GetNextObjectInShape(4, 24.0, location1, 0, 1, [0.0,0.0,0.0]);
	}
}

