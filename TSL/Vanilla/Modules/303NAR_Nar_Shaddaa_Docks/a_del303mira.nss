void main() {
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oMira = GetObjectByTag("Mira", 0);
	object o303Mira = GetObjectByTag("303Mira", 0);
	DestroyObject(oHanharr, 0.0, 0, 0.0, 0);
	DestroyObject(oMira, 0.0, 0, 0.0, 0);
	DestroyObject(o303Mira, 0.0, 0, 0.0, 0);
}
