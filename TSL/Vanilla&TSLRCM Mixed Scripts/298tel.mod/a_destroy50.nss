void main() {
	object oHK50CS = GetObjectByTag("HK50CS", 0);
	object oHK502CS = GetObjectByTag("HK502CS", 0);
	object oHK503CS = GetObjectByTag("HK503CS", 0);
	DestroyObject(oHK502CS, 0.0, 0, 0.0, 0);
	DestroyObject(oHK50CS, 0.0, 0, 0.0, 0);
	DestroyObject(oHK503CS, 0.0, 0, 0.0, 0);
}

