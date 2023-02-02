void main() {
	object oExiting = GetExitingObject();
	if ((oExiting != GetObjectByTag("g_riiken", 0))) {
		return;
	}
	SetLocalBoolean(GetObjectByTag("g_riiken", 0), 40, 0);
}
