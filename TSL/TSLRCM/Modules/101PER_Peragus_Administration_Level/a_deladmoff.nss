void main() {
	object oAdmOff = GetObjectByTag("AdmOff", 0);
	if ((!GetIsObjectValid(oAdmOff))) {
		return;
	}
	DestroyObject(oAdmOff, 0.0, 0, 0.0, 0);
}