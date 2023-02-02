void main() {
	object oWP_HANDMAIDEN1_0 = GetWaypointByTag("WP_HANDMAIDEN1_0");
	object oWP_HANDMAIDEN2_0 = GetWaypointByTag("WP_HANDMAIDEN2_0");
	CreateObject(1, "p_handmaiden001", GetLocation(oWP_HANDMAIDEN1_0), 0);
	CreateObject(1, "p_handmaiden002", GetLocation(oWP_HANDMAIDEN2_0), 0);
	object oSis1 = GetObjectByTag("Sis1", 0);
	object oSis2 = GetObjectByTag("Sis2", 0);
	AssignCommand(oSis1, ClearAllActions());
	AssignCommand(oSis2, ClearAllActions());
	DelayCommand(0.5, AssignCommand(oSis1, ActionForceMoveToObject(GetObjectByTag("WP_HANDMAIDEN1_1", 0), 0, 1.0, 30.0)));
	DelayCommand(0.5, AssignCommand(oSis2, ActionForceMoveToObject(GetObjectByTag("WP_HANDMAIDEN2_1", 0), 0, 1.0, 30.0)));
}
