void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		CreateObject(1, "p_kreia001", GetLocation(GetWaypointByTag("WP_ZEZ_0")), 0);
	}
	if ((nParam1 == 1)) {
		object oZez = GetObjectByTag("Zez", 0);
		AssignCommand(oZez, ClearAllActions());
		AssignCommand(oZez, ActionForceMoveToObject(GetObjectByTag("WP_ZEZ_1", 0), 0, 1.0, 30.0));
	}
	if ((nParam1 == 2)) {
		object oKreia = GetObjectByTag("Kreia", 0);
		object oWP_KREIA_END_0 = GetObjectByTag("WP_KREIA_END_0", 0);
		AssignCommand(oKreia, ClearAllActions());
		AssignCommand(oKreia, ActionJumpToLocation(GetLocation(oWP_KREIA_END_0)));
	}
	if ((nParam1 == 3)) {
		object object10 = GetObjectByTag("Kreia", 0);
		AssignCommand(object10, ClearAllActions());
		AssignCommand(object10, ActionForceMoveToObject(GetObjectByTag("WP_KREIA_END_1", 0), 0, 1.0, 30.0));
	}
}