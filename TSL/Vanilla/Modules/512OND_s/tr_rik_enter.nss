void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetObjectByTag("g_riiken", 0))) {
		return;
	}
	SetLocalBoolean(GetObjectByTag("g_riiken", 0), 40, 1);
}

