void main() {
	string string1 = "000_HK_Chassis";
	SetGlobalNumber(string1, 1);
	object oDrdParts = GetObjectByTag("DrdParts", 0);
	if (GetIsObjectValid(oDrdParts)) {
		AurPostString("removing effect", 15, 15, 10.0);
		RemoveEffectByID(oDrdParts, 2067);
	}
}
