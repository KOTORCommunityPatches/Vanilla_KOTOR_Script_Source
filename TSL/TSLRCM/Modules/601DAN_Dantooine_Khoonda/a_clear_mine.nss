void main() {
	int int1 = 0;
	object oFixedmerc = GetObjectByTag("fixedmerc", int1);
	while (GetIsObjectValid(oFixedmerc)) {
		DestroyObject(oFixedmerc, 0.0, 0, 0.0, 0);
		oFixedmerc = GetObjectByTag("fixedmerc", (int1++));
	}
}