void main() {
	object oRepCapt = GetObjectByTag("RepCapt", 0);
	object oNavOff = GetObjectByTag("NavOff", 0);
	object oRepDoc = GetObjectByTag("RepDoc", 0);
	object oRepSold = GetObjectByTag("RepSold", 0);
	if (GetIsObjectValid(oRepCapt)) {
		DestroyObject(oRepCapt, 0.0, 1, 0.0, 0);
	}
	if (GetIsObjectValid(oNavOff)) {
		DestroyObject(oNavOff, 0.0, 1, 0.0, 0);
	}
	if (GetIsObjectValid(oRepDoc)) {
		DestroyObject(oRepDoc, 0.0, 1, 0.0, 0);
	}
	if (GetIsObjectValid(oRepSold)) {
		DestroyObject(oRepSold, 0.0, 1, 0.0, 0);
	}
}
