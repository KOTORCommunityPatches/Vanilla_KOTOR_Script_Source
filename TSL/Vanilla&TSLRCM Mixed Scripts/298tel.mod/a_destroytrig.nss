void main() {
	int int1 = 0;
	object oHK50rev = GetObjectByTag("HK50rev", int1);
	while ((int1 <= 3)) {
		DestroyObject(oHK50rev, 0.0, 0, 0.0, 0);
		oHK50rev = GetObjectByTag("HK50rev", (int1++));
	}
	DestroyObject(GetObjectByTag("HK50cs1", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("HK50cs1", 1), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("HK50cs1", 2), 0.0, 0, 0.0, 0);
}

