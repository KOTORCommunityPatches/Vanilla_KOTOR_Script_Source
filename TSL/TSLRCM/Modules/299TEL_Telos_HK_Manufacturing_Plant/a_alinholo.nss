void main() {
	int nParam1 = GetScriptParameter(1);
	object oWP_ALINHOLO = GetWaypointByTag("WP_ALINHOLO");
	if ((nParam1 == 1)) {
		CreateObject(1, "c_ithorian001", GetLocation(oWP_ALINHOLO), 1);
	}
	if ((nParam1 == 2)) {
		object oIthHolo = GetObjectByTag("IthHolo", 0);
		DestroyObject(oIthHolo, 0.0, 0, 0.0, 0);
	}
	if ((nParam1 == 3)) {
		CreateObject(1, "n_Twilekm001", GetLocation(oWP_ALINHOLO), 0);
	}
	if ((nParam1 == 4)) {
		object oTwiHolo = GetObjectByTag("TwiHolo", 0);
		DestroyObject(oTwiHolo, 0.0, 0, 0.0, 0);
	}
	if ((nParam1 == 5)) {
		CreateObject(1, "n_quarren002", GetLocation(oWP_ALINHOLO), 0);
	}
	if ((nParam1 == 6)) {
		object oQuarHolo = GetObjectByTag("QuarHolo", 0);
		DestroyObject(oQuarHolo, 0.0, 0, 0.0, 0);
	}
}