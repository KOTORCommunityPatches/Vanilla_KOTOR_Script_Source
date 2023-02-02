void main() {
	object oRMedOff = GetObjectByTag("RMedOff", 0);
	if ((!GetIsObjectValid(oRMedOff))) {
		return;
	}
	DestroyObject(oRMedOff, 0.0, 0, 0.0, 0);
}
