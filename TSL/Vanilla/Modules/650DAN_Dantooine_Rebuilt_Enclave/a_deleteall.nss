void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oSister1 = GetObjectByTag("Sister1", 0);
	object oSister2 = GetObjectByTag("Sister2", 0);
	DestroyObject(oKreia, 0.0, 1, 0.0, 0);
	DestroyObject(oHandmaiden, 0.0, 1, 0.0, 0);
	DestroyObject(oSister1, 0.0, 1, 0.0, 0);
	DestroyObject(oSister2, 0.0, 1, 0.0, 0);
}
