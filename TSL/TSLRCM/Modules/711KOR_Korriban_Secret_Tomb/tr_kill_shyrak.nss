void main() {
	object oEntering = GetEnteringObject();
	string string1 = GetTag(oEntering);
	string string3 = "shyrack";
	string string4 = "hssiss";
	if (((GetStringLeft(string1, GetStringLength(string3)) == string3) || (GetStringLeft(string1, GetStringLength(string4)) == string4))) {
		DestroyObject(oEntering, 0.0, 0, 0.0, 0);
	}
}