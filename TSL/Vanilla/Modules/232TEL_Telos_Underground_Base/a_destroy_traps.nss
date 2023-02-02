void main() {
	int int1 = 0;
	object oG_T_TRAP012 = GetObjectByTag("G_T_TRAP012", int1);
	while (GetIsObjectValid(oG_T_TRAP012)) {
		DestroyObject(oG_T_TRAP012, 0.0, 0, 0.0, 0);
		(int1++);
		oG_T_TRAP012 = GetObjectByTag("G_T_TRAP012", int1);
	}
}
