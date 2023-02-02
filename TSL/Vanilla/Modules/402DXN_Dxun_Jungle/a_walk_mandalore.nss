void main() {
	object oMandalorian_fr = GetObjectByTag("mandalorian_sentry", 0);
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("WP_MEETMANDALORE"), 0, 1.0));
	AssignCommand(oMandalorian_fr, ActionMoveToObject(GetWaypointByTag("From_403DXN"), 0, 1.0));
	SetGlobalBoolean("402DXN_SentryPost", 1);
	SetGlobalNumber("402DXN_Sentry_Bypass", 0);
	int int1 = 2;
	while ((int1 <= 6)) {
		oMandalorian_fr = GetObjectByTag("mandalorian_fr", int1);
		DestroyObject(oMandalorian_fr, 10.0, 0, 0.0, 0);
		(int1++);
	}
}
