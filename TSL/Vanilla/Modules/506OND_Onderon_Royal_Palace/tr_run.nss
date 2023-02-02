void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oWp_tele_pc_end = GetObjectByTag("wp_tele_pc_end", 0);
	string string1 = GetStringRight(GetTag(OBJECT_SELF), 1);
	location location1 = GetLocation(GetObjectByTag(("wp_run_" + string1), 0));
	object oShapeObject = GetFirstObjectInShape(4, 7.5, location1, 0, 65, [0.0,0.0,0.0]);
	while (GetIsObjectValid(oShapeObject)) {
		AssignCommand(oShapeObject, ActionMoveToObject(oWp_tele_pc_end, 1, 1.0));
		oShapeObject = GetNextObjectInShape(4, 7.5, location1, 0, 65, [0.0,0.0,0.0]);
	}
}
