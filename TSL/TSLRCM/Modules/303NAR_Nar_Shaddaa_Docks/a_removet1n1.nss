void main() {
	if (((GetGlobalNumber("203TEL_DroidInt_1") == 5) || (GetGlobalNumber("000_T1N1_Dead") == 1))) {
		DestroyObject(GetObjectByTag("B4D4", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("T1N1", 0), 0.0, 0, 0.0, 0);
	}
}