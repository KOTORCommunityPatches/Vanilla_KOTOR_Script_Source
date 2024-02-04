void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		object oAtton = GetObjectByTag("Atton", 0);
		AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_ATTON_CANTINA1", 0))));
	}
	if ((nParam1 == 1)) {
		object object4 = GetObjectByTag("Atton", 0);
		object oTwinSun1 = GetObjectByTag("TwinSun1", 0);
		object oTwinSun2 = GetObjectByTag("TwinSun2", 0);
		AssignCommand(object4, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_ATTON_CANTINA2", 0))));
		AssignCommand(oTwinSun1, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_TWIN1_CANTINA", 0))));
		AssignCommand(oTwinSun2, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_TWIN2_CANTINA", 0))));
	}
	if ((nParam1 == 2)) {
		object object13 = GetObjectByTag("Atton", 0);
		AssignCommand(object13, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_ATTON_CANTINA3", 0))));
	}
}