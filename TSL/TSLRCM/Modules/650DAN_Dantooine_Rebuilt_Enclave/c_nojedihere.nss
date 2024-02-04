int StartingConditional() {
	object oKavar = GetObjectByTag("Kavar", 0);
	object oVrook = GetObjectByTag("Vrook", 0);
	object oZezKaiEll = GetObjectByTag("ZezKaiEll", 0);
	return (((!GetIsObjectValid(oKavar)) && (!GetIsObjectValid(oVrook))) && (!GetIsObjectValid(oZezKaiEll)));
}