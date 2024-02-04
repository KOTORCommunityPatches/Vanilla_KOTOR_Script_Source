void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		CreateObject(1, "zez", GetLocation(GetWaypointByTag("WP_ZEZ_0")), 0);
	}
	if ((nParam1 == 1)) {
		object oZez = GetObjectByTag("Zez", 0);
		AssignCommand(oZez, ClearAllActions());
		AssignCommand(oZez, ActionForceMoveToObject(GetObjectByTag("WP_ZEZ_2", 0), 0, 1.0, 30.0));
		object oHanharr = GetObjectByTag("hanharr", 0);
		object oWp_han_fix = GetWaypointByTag("wp_han_fix");
		location location2 = GetLocation(oWp_han_fix);
		AssignCommand(oHanharr, ActionForceMoveToLocation(location2, 0, 30.0));
	}
	if ((nParam1 == 2)) {
		object object10 = GetObjectByTag("Zez", 0);
		AssignCommand(object10, ClearAllActions());
		AssignCommand(object10, ActionForceMoveToObject(GetObjectByTag("WP_ZEZ_1", 0), 0, 1.0, 30.0));
	}
}