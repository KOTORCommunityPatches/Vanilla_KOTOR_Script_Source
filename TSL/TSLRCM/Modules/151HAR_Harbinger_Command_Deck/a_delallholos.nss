void main() {
	object oRepCapt = GetObjectByTag("RepCapt", 0);
	object oRepGen = GetObjectByTag("RepGen", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oHK50 = GetObjectByTag("HK50", 0);
	SetKeepStealthInDialog(0);
	if (GetIsObjectValid(oRepCapt)) {
		DestroyObject(oRepCapt, 0.0, 1, 0.0, 0);
	}
	if (GetIsObjectValid(oRepGen)) {
		DestroyObject(oRepGen, 0.0, 1, 0.0, 0);
	}
	if (GetIsObjectValid(oCarth)) {
		DestroyObject(oCarth, 0.0, 1, 0.0, 0);
	}
	if (GetIsObjectValid(oHK50)) {
		DestroyObject(oHK50, 0.0, 1, 0.0, 0);
	}
}