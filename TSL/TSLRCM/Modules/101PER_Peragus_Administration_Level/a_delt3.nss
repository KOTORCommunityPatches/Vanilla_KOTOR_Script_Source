void main() {
	object oT3M40 = GetObjectByTag("T3M40", 0);
	if ((!GetIsObjectValid(oT3M40))) {
		return;
	}
	DestroyObject(oT3M40, 0.0, 0, 0.0, 0);
}