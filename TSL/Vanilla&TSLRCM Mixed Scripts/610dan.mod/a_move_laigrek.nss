void main() {
	object oWp_laigrekambush = GetObjectByTag("wp_laigrekambush", 0);
	location location1 = GetLocation(OBJECT_SELF);
	object oShapeObject = GetFirstObjectInShape(2, 20.0, location1, 0, 1, [0.0,0.0,0.0]);
	int int1 = 0;
	while (GetIsObjectValid(oShapeObject)) {
		if ((FindSubString(GetTag(oShapeObject), "laigrek") >= 0)) {
			(int1++);
			AssignCommand(oShapeObject, ClearAllActions());
			AssignCommand(oShapeObject, ActionJumpToObject(oWp_laigrekambush, 1));
			DelayCommand(3.0, AssignCommand(oShapeObject, PlayAnimation(10278, 1.0, 0.0)));
		}
		oShapeObject = GetNextObjectInShape(2, 20.0, location1, 0, 1, [0.0,0.0,0.0]);
	}
	AurPostString((("a_move_laigrek: " + IntToString(int1)) + " laigreks moved"), 10, 10, 5.0);
}

