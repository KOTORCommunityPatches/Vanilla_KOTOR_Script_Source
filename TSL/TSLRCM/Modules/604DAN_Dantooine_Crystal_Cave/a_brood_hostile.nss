void main() {
	object oKinrath_hatch;
	int int1 = 0;
	while ((int1 <= 8)) {
		oKinrath_hatch = GetObjectByTag("kinrath_hatch", int1);
		if (GetIsObjectValid(oKinrath_hatch)) {
			ChangeToStandardFaction(oKinrath_hatch, 1);
		}
		(int1++);
	}
	ChangeToStandardFaction(GetObjectByTag("g_kinrath_mom", 0), 1);
}