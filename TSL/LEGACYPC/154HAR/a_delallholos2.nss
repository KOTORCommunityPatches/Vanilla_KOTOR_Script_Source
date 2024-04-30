void main() {
	object oRepCapt = GetObjectByTag("RepCapt", 0);
	object oNavOff = GetObjectByTag("NavOff", 0);
	object oRepDoc = GetObjectByTag("RepDoc", 0);
	object oRepSold = GetObjectByTag("RepSold", 0);
	if ((!GetIsObjectValid(oRepCapt))) {
		return;
	}
	DestroyObject(oRepCapt, 0.0, 0, 0.0, 0);
	if ((!GetIsObjectValid(oNavOff))) {
		return;
	}
	DestroyObject(oNavOff, 0.0, 0, 0.0, 0);
	if ((!GetIsObjectValid(oRepDoc))) {
		return;
	}
	DestroyObject(oRepDoc, 0.0, 0, 0.0, 0);
	if ((!GetIsObjectValid(oRepSold))) {
		return;
	}
	DestroyObject(oRepSold, 0.0, 0, 0.0, 0);
}

