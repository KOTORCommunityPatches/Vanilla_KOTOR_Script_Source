void main() {
	object oSecOff = GetObjectByTag("SecOff", 0);
	if ((!GetIsObjectValid(oSecOff))) {
		return;
	}
	DestroyObject(oSecOff, 0.0, 0, 0.0, 0);
}

