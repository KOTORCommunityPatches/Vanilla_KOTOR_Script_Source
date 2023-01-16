void main() {
	object oSalvage = GetObjectByTag("salvage", 0);
	if (GetIsObjectValid(oSalvage)) {
		DestroyObject(oSalvage, 0.5, 0, 0.0, 0);
	}
}

