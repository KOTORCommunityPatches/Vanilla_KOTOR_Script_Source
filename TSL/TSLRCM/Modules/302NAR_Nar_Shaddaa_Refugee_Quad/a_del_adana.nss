void main() {
	object oAdana = GetObjectByTag("adana", 0);
	if (GetIsObjectValid(oAdana)) {
		DestroyObject(oAdana, 0.0, 0, 0.0, 0);
	}
}