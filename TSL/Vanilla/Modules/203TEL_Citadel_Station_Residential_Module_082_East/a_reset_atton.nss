void main() {
	object oAtton = GetObjectByTag("atton", 0);
	if (GetIsObjectValid(oAtton)) {
		SetLocalBoolean(oAtton, 39, 0);
	}
}
