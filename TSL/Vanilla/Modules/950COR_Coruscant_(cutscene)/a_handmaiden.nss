void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			{
				object oWP_handmaiden_2 = GetObjectByTag("WP_handmaiden_2", 0);
				object oHandmaiden = GetObjectByTag("handmaiden", 0);
				if ((GetIsObjectValid(oWP_handmaiden_2) && GetIsObjectValid(oHandmaiden))) {
					AurPostString("MOVING HANDMAIDEN", 10, 20, 10.0);
					AssignCommand(oHandmaiden, ClearAllActions());
					AssignCommand(oHandmaiden, ActionMoveToLocation(GetLocation(oWP_handmaiden_2), 0));
				}
				else {
					AurPostString("INVALID OBJECTS, HANDMAIDEN CANT MOVE", 10, 20, 10.0);
				}
			}
			break;
		default:
			AurPostString("INVALID PARAMETER", 10, 21, 10.0);
			break;
	}
}
