void main() {
	object oHK51Holo = GetObjectByTag("HK51Holo", 0);
	if ((!GetIsObjectValid(oHK51Holo))) {
		return;
	}
	DestroyObject(oHK51Holo, 0.0, 0, 0.0, 0);
}