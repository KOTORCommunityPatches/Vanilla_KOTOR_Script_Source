void main() {
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	if ((!GetIsObjectValid(oHandmaiden))) {
		return;
	}
	AssignCommand(oHandmaiden, ClearAllActions());
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		AssignCommand(oHandmaiden, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_PC_WALK_2"))));
	}
	else {
		if ((nParam1 == 1)) {
			AssignCommand(oHandmaiden, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_PC_WALK_1"))));
		}
		else {
			if ((nParam1 == 2)) {
				object oSister1 = GetObjectByTag("Sister1", 0);
				object oSister2 = GetObjectByTag("Sister2", 0);
				AssignCommand(oHandmaiden, ActionMoveToObject(GetObjectByTag("WP_HAND_1", 0), 1, 1.0));
				AssignCommand(oSister1, ActionMoveToObject(GetObjectByTag("WP_SISTER1_1", 0), 1, 1.0));
				AssignCommand(oSister2, ActionMoveToObject(GetObjectByTag("WP_SISTER2_1", 0), 1, 1.0));
			}
			else {
				if ((nParam1 == 3)) {
					AssignCommand(oHandmaiden, ActionMoveToLocation(GetLocation(GetObjectByTag("WP_handatris", 0)), 0));
				}
			}
		}
	}
}

