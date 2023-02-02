void main() {
	object oHOLO1 = GetObjectByTag("HOLO1", 0);
	object oHOLO2 = GetObjectByTag("HOLO2", 0);
	object oHOLO3 = GetObjectByTag("HOLO3", 0);
	if ((!GetIsObjectValid(oHOLO1))) {
		return;
	}
	DestroyObject(oHOLO1, 0.0, 0, 0.0, 0);
	if ((!GetIsObjectValid(oHOLO2))) {
		return;
	}
	DestroyObject(oHOLO2, 0.0, 0, 0.0, 0);
	DestroyObject(oHOLO1, 0.0, 0, 0.0, 0);
	if ((!GetIsObjectValid(oHOLO3))) {
		return;
	}
	DestroyObject(oHOLO3, 0.0, 0, 0.0, 0);
}
