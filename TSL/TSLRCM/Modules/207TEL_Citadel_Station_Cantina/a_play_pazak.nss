void main() {
	object oDoton = GetObjectByTag("doton", 0);
	if (GetIsObjectValid(oDoton)) {
		PlayPazaak(10, "a_end_pazak", 0, 0, oDoton);
	}
}