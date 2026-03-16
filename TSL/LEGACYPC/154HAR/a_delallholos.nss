void main() {
	object oRepCapt = GetObjectByTag("RepCapt", 0);
	object oRepGen = GetObjectByTag("RepGen", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oHK50 = GetObjectByTag("HK50", 0);
	if ((!GetIsObjectValid(oRepCapt))) {
		return;
	}
	DestroyObject(oRepCapt, 0.0, 0, 0.0, 0);
	if ((!GetIsObjectValid(oRepGen))) {
		return;
	}
	DestroyObject(oRepGen, 0.0, 0, 0.0, 0);
	if ((!GetIsObjectValid(oCarth))) {
		return;
	}
	DestroyObject(oCarth, 0.0, 0, 0.0, 0);
	if ((!GetIsObjectValid(oHK50))) {
		return;
	}
	DestroyObject(oHK50, 0.0, 0, 0.0, 0);
}

