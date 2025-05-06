void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			SetGlobalNumber("401DXN_Zhug_Encounter", (GetGlobalNumber("401DXN_Zhug_Encounter") + 1));
			break;
		case 1:
			AssignCommand(GetObjectByTag("dezanti", 0), ActionMoveToLocation(GetLocation(GetWaypointByTag("WP_DEZANTIWLK")), 0));
			AurPostString(("Jumping " + GetTag(GetFirstPC())), 5, 5, 5.0);
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_DEZANTIPC"))));
			break;
	}
}

